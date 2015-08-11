use strict;
use warnings;
use 5.014;
use Convert::Binary::C;
use Path::Class qw( file );

my $c = Convert::Binary::C->new;

$c->Include(qw(
  /usr/include
  /usr/include/x86_64-linux-gnu/
  /usr/include/linux
));
$c->Define(qw( __x86_64__ __unix__ __POSIX__ ));
$c->parse(q{
  typedef unsigned long int size_t;
  typedef signed long int ptrdiff_t;
  typedef unsigned short int wchar_t;
});

$c->parse_file('GL/gl.h');

my %constant;

foreach my $macro (grep { /^GL_/ } $c->macro)
{
  if($macro =~ /^(GL_[_A-Z0-9a-z]+)\s+(0x[A-F0-9]+|-?[0-9]+)/) {
    $constant{$1} = $2;
    next;
  }
  warn $macro;
}

my $constants = join("\n", map { "#=head2 $_\n#\n#=cut\n\n    $_ => $constant{$_},\n"} sort keys %constant);

my $typedefs = "";
my %types;
foreach my $typedef ($c->typedef)
{
  my $type = $typedef->{type};
  my $alias = $typedef->{declarator};
  $type = $types{$type} if $types{$type};
  next unless $alias =~ /^GL/;
  $typedefs .= sprintf "  \$ffi->type('%s' => '%s');\n", $type, $alias;
  $types{$alias} = $type;
}

$typedefs .= sprintf "  \$ffi->type('%s' => '%s');\n", "$types{$_}\[]", "${_}_params"
  for qw( GLfloat GLdouble GLint GLboolean );

my $text = file('/usr/include/GL/gl.h')->slurp;
my @func;
while($text =~ s/GLAPI\s+([a-zA-Z0-9]+)\s+GLAPIENTRY\s*(.+?);//s)
{
  push @func, [$1,$2];
}

my $attaches = '';
foreach my $func (@func)
{
  my($ret, $sig) = @$func;
  
  if($sig =~ /^(gl[a-zA-Z0-9]+)\s*\(\s*(.*)\s*\)/s) {
    my $name = $1;
    my $args = $2;
    my @args = map { shift @$_ if $_->[0] eq 'const'; $_ } map { [split /\s+/, $_] } split /\s*,\s*/s, $args;
    
    $attaches .= "=head2 $name\n\n";
    $attaches .= " $name(";
    
    if(@args == 1 && $args[0]->[0] eq 'void') {
    } else {
      $attaches .= ' ';
      foreach my $arg (@args) {
        if($arg->[1] eq '*params')
        {
          $attaches .= '\@params, ';
        }
        else
        {
          $attaches .= '$' . $arg->[1] . ', ';
        }
      }
    }
    
    $attaches .= ");\n\n=cut\n\n";
    
    $attaches .= "  \$ffi->attach( $name => [";

    if(@args == 1 && $args[0]->[0] eq 'void') {
    } else {
      $attaches .= ' ';
      foreach my $arg (@args) {
        if(@$arg == 2)
        {
          my $type = $arg->[0];
          $type .= '_params' if $arg->[1] eq '*params';
          $attaches .= "'$type', ";
        }
        else
        {
          warn "wrong number of tokens";
          use YAML ();
          print YAML::Dump(\@args);
        }
      }
    }

    $attaches .= "] => '$ret' );\n\n";
  }
  else
  {
    warn "DOES NOT MATCH: $sig";
  }
}


open my $fh, '>', 'lib/OpenGL/FFI/Mesa/GL.pm';

print $fh qq{use strict;
use warnings;
use 5.014;

package OpenGL::FFI::Mesa::GL {

  use OpenGL::FFI ();

  use constant {

#=head1 CONSTANTS
#
$constants
  };
  
  my \$ffi = OpenGL::FFI::_get_ffi();
  \$ffi->lib(OpenGL::FFI::_find_lib('GL'));
$typedefs

=head1 FUNCTIONS

$attaches

1;
}};

close $fh;
