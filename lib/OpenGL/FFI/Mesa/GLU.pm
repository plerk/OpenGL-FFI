use strict;
use warnings;
use 5.014;

package OpenGL::FFI::Mesa::GLU {

  use OpenGL::FFI ();
  
  my $ffi = OpenGL::FFI::_get_ffi();
  $ffi->lib(OpenGL::FFI::_find_lib('GLU'));

  $ffi->attach( gluPerspective => ['GLdouble','GLdouble','GLdouble','GLdouble'] => 'void' );

}

1;
