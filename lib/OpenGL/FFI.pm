use strict;
use warnings;
use 5.014;

package OpenGL::FFI {

# ABSTRACT: OpenGL bindings for Perl done the FFI way
# VERSION

  use FFI::Platypus ();
  use FFI::CheckLib ();
  use Carp ();

  sub _get_ffi {
    state $ffi;
    $ffi = FFI::Platypus->new(ignore_not_found => 1) unless defined $ffi;
    $ffi;
  }

  sub _find_lib {
    my($name) = @_;

    $name = uc $name if $name =~ /^glu?$/i;
    $name = lc $name if $name =~ /^glut$/i;
    my @libs = eval { FFI::CheckLib::find_lib_or_die( lib => $name ) };
    my $error = $@;
    
    return @libs unless $error;
    
    if($^O eq 'darwin' && $name =~ /^GLU?$/) {
      my $lib = "/System/Library/Frameworks/OpenGL.framework/Libraries/lib$name.dylib";
      push @libs, $lib if -r $lib;
    }
    
    if($^O eq 'darwin' && $name eq 'glut') {
      my $lib = '/System/Library/Frameworks/GLUT.framework/GLUT';
      push @libs, $lib if -r $lib;
    }
    
    return @libs if @libs;
    
    die $error if $error;
    
    die "unable to find dynamic library for $name";
  }
  
  sub _find_class {
    my($name) = @_;
    return ('OpenGL::FFI::FreeGLUT',  'OpenGL/FFI/FreeGLUT.pm') if $name =~ /^(glut|GLUT_)/ || $name eq ':glut';
    return ('OpenGL::FFI::Mesa::GLU', 'OpenGL/FFI/Mesa/GLU.pm') if $name =~ /^(glu|GLU_)/   || $name eq ':glu';
    return ('OpenGL::FFI::Mesa::GL',  'OpenGL/FFI/Mesa/GL.pm' ) if $name =~ /^(gl|GL_)/     || $name eq ':gl';
    return '';
  }
  
  sub import {
    my($class, @list) = @_;

    my $package = caller;
    
    foreach my $name (@list) {
      my($class,$file) = _find_class($name);
      Carp::croak("$class does not export $name") unless $class;
      require $file;
      
      if($name =~ /^:(.*)$/) {
      
        my $re = "^($1|" . uc($1) . "_)";
        foreach my $key (do { no strict 'refs'; keys %{"${class}::"} }) {
          if($key =~ $re) {
            no strict 'refs';
            *{"${package}::$key"} = \&{"${class}::$key"};
          }
        }
      
      } else {
        if($class->can($name)) {
          no strict 'refs';
          *{"${package}::$name"} = \&{"${class}::$name"};
        } else {
          Carp::croak("$class does not export $name");
        }
      }
    }
  }

}

1;
