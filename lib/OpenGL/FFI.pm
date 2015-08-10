use strict;
use warnings;
use 5.014;

package OpenGL::FFI {

# ABSTRACT: OpenGL bindings for Perl done the FFI way
# VERSION

  use OpenGL::FFI::Mesa::GL  ();
  use OpenGL::FFI::Mesa::GLU ();
  use OpenGL::FFI::FreeGLUT  ();
  use base qw( Exporter );

  our @EXPORT_OK;
  our %EXPORT_TAGS;

  foreach my $key (keys %OpenGL::FFI::Mesa::GL::)
  {
    if($key =~ /^(GL_|gl)/) {
      push @EXPORT_OK, $key;
      push @{ $EXPORT_TAGS{GL} }, $key;
      no strict 'refs';
      *{$key} = \&{"OpenGL::FFI::Mesa::GL::$key"};
    }
  }

  foreach my $key (keys %OpenGL::FFI::Mesa::GLU::)
  {
    if($key =~ /^(GLU_|glu)/) {
      push @EXPORT_OK, $key;
      push @{ $EXPORT_TAGS{GLU} }, $key;
      no strict 'refs';
      *{$key} = \&{"OpenGL::FFI::Mesa::GLU::$key"};
    }
  }

  foreach my $key (keys %OpenGL::FFI::FreeGLUT::)
  {
    if($key =~ /^(GLUT_|glut)/) {
      push @EXPORT_OK, $key;
      push @{ $EXPORT_TAGS{GLUT} }, $key;
      no strict 'refs';
      *{$key} = \&{"OpenGL::FFI::FreeGLUT::$key"};
    }
  }

}

1;
