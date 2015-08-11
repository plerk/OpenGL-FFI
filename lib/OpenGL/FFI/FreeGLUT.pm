use strict;
use warnings;
use 5.014;

package OpenGL::FFI::FreeGLUT {

  use OpenGL::FFI;
  use constant {
    GLUT_DOUBLE => 0x0002,
    GLUT_RGB    => 0x0000,
  };
  
  my $ffi = OpenGL::FFI::_get_ffi();
  $ffi->lib( OpenGL::FFI::_find_lib('GLUT') );
  
  $ffi->load_custom_type('::StringArray' => 'string_array');
  
  $ffi->attach( [glutInit=>'_glutInit'] => [ 'int*', 'string_array' ] => 'void');
  
  sub glutInit (\@) {
    # TODO: update of @ARGV ?
    my $size = scalar @{$_[0]};
    _glutInit(\$size, $_[0]);
  }
  
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
