use strict;
use warnings;
use 5.014;

package OpenGL::FFI::FreeGLUT {

  use FFI::Platypus ();
  use FFI::CheckLib ();
  use OpenGL::FFI::Mesa::GL ();
  use constant {
    GLUT_DOUBLE => 0x0002,
    GLUT_RGB    => 0x0000,
  };
  
  my $ffi = $OpenGL::FFI::Mesa::GL::ffi;
  $ffi->lib( FFI::CheckLib::find_lib_or_die( lib => 'glut' ) );
  $ffi->load_custom_type('::StringArray' => 'string_array');
  
  $ffi->attach( glutInit            => [ 'int*', 'string_array' ] => 'void' );
  $ffi->attach( glutSolidCube       => [ 'GLdouble' ] => 'void' );
  $ffi->attach( glutSwapBuffers     => [] => 'void' );
  $ffi->attach( glutInitDisplayMode => [ 'unsigned int' ] => 'void' );
  $ffi->attach( glutInitWindowSize  => [ 'int', 'int' ] => 'void' );
  $ffi->attach( glutCreateWindow    => [ 'string' ] => 'int' );
  $ffi->attach( glutDisplayFunc     => [ '()->void' ] => 'void' );
  $ffi->attach( glutIdleFunc        => [ '()->void' ] => 'void' );
  $ffi->attach( glutReshapeFunc     => [ '(int,int)->void' ] => 'void' );
  $ffi->attach( glutMainLoop        => [ ] => 'void' );
}

1;
