use strict;
use warnings;
use 5.014;

package OpenGL::FFI::Mesa::GLU {

  use FFI::Platypus ();
  use FFI::CheckLib ();
  use OpenGL::FFI::Mesa::GL ();
  
  use constant {
  };
  
  my $ffi = $OpenGL::FFI::Mesa::GL::ffi;
  $ffi->lib( FFI::CheckLib::find_lib_or_die( lib => 'GLU' ) );

  $ffi->attach( gluPerspective => ['GLdouble','GLdouble','GLdouble','GLdouble'] => 'void' );

}

1;
