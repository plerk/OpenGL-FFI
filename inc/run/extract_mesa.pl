use strict;
use warnings;
use 5.014;
use Convert::Binary::C;
use YAML::XS qw( Load DumpFile Dump );
use Path::Class qw( file );
use lib 'inc';
use Ext;
use Gen::Mod;

my $mod = Gen::Mod->new(Load(do { local $/; <DATA> }));

my $c = Ext::convert_binary_c();
$c->parse_file('GL/gl.h');

foreach my $macro (grep { /^GL_/ } $c->macro)
{
  if($macro =~ /^(GL_[_A-Z0-9a-z]+)\s+(0x[A-F0-9]+|-?[0-9]+)/)
  {
    push @{ $mod->constants }, Gen::Constant->new( name => $1, value => $2 );
  }
}

my $types = {};

foreach my $typedef ($c->typedef)
{
  my $alias = $typedef->{declarator};
  next unless $alias =~ /^GL/;
  my $type = $typedef->{type};
  if($types->{$type})
  {
    $type = $types->{$type};
  }
  else
  {
    $types->{$alias} = $type;
  }
  push @{ $mod->typedefs }, Gen::Typedef->new( type => $type, alias => $alias );
}

push @{ $mod->typedefs }, Gen::Typedef->new( type => $types->{$_} . '[]', alias => "${_}_array" )
  for qw( GLfloat GLdouble GLint GLboolean );

my $header_text = file('/usr/include/GL/gl.h')->slurp;
while($header_text =~ s/GLAPI\s+(const\s+)?(?<return_type>[a-zA-Z0-9]+(\s*\*)?)\s+GLAPIENTRY\s*(?<rest>.+?);//s)
{
  my($return_type, $rest) = ($+{return_type},$+{rest});
  
  if($rest =~ /^(gl[a-zA-Z0-9]+)\s*\(\s*(.*)\s*\)/s)
  {
    my($name, $args) = ($1,$2);
    my $function = Gen::Function->new(
      name => $name,
      return_type => $return_type,
    );

    unless($args =~ /^\s*void\s*$/)
    {
      foreach my $arg (map { $_->[1] eq '*params' ? [ $_->[0] . '_array', 'params' ] : $_ } map { shift @$_ if $_->[0] eq 'const'; $_ } map { [split /\s+/, $_] } split /\s*,\s*/s, $args)
      {
        push @{ $function->arguments }, Gen::ArgumentType->new( type => $arg->[0], name => $arg->[1] );
      }
    }
    
    push @{ $mod->functions }, $function;
  }
  else
  {
    warn "function signature does not pattern that this script recognize: $rest";
  }
}

$mod->find_function_by_name('glGetString')->return_type('string');

DumpFile("inc/data/OpenGL.FFI.Mesa.GL.yml", $mod);

__DATA__
---
package_name: OpenGL::FFI::Mesa::GL
abstract:     Mesa implementation of GL
synopsis:     " use OpenGL::FFI qw( :gl );"
description:  |
                This is a description
                and some other content
                too.
