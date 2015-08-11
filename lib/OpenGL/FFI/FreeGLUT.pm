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
  $ffi->attach( glutMainLoop        => [ ] => 'void' );
  
  
  $ffi->attach( [glutCreateWindow => '_glutCreateWindow'] => [ 'string' ] => 'int' );
  $ffi->attach( [glutDestroyWindow => '_glutDestroyWindow'] => [ 'int' ] => 'void' );
  $ffi->attach( [glutCreateSubWindow => '_glutCreateSubWindow'] => [ 'int', 'int', 'int', 'int', 'int' ] => 'int' );
  $ffi->attach( glutSetWindow => [ 'int' ] => 'void' );
  $ffi->attach( glutGetWindow => [] => 'int' );

  my %windows;

  package OpenGL::FFI::FreeGLUT::Window {
  
    sub new {
      my($class) = @_;
      my $self = bless { subwindows => [], closures => {} }, $class;
      $self;
    }
    
    sub new_subwindow {
      my($self) = @_;
      my $new = (ref $self)->new;
      push @{ $self->subwindows }, $new;
      $new;
    }
    
    sub subwindows { $_[0]->{subwindows} }
    sub closures   { $_[0]->{closures} }
    
    sub set_closure {
      my($self, $name, $sub) = @_;
      $self->closures->{$name} = $ffi->closure($sub);
    }
    
    sub DESTROY {
      delete $windows{$_} for @{ $_[0]->subwindows };
    }
    
  }

  sub glutCreateWindow {
    my($title) = @_;
    my $id = _glutCreateWindow($title);
    $windows{$id} = OpenGL::FFI::FreeGLUT::Window->new;
    $id;
  }
  
  sub glutDestroyWindow {
    my($id) = @_;
    _glutDestroyWindow($id);
    delete $windows{$id};
    ();
  }
  
  sub glutCreateSubWindow {
    my($other_id, $x, $y, $width, $height) = @_;
    my $id = _glutCreateSubWindow($other_id, $x, $y, $width, $height);
    $windows{$id} = $windows{$other_id}->new_subwindow;
    $id;
  }

  $ffi->attach( [glutDisplayFunc => '_glutDisplayFunc']  => [ '()->void' ]        => 'void' );
  $ffi->attach( [glutIdleFunc => '_glutIdleFunc']        => [ '()->void' ]        => 'void' );
  $ffi->attach( [glutReshapeFunc => '_glutReshapeFunc']  => [ '(int,int)->void' ] => 'void' );

  sub glutDisplayFunc {
    my($sub) = @_;
    _glutDisplayFunc($windows{glutGetWindow()}->set_closure(Display => $sub));
  }

  sub glutIdleFunc {
    my($sub) = @_;
    _glutIdleFunc($windows{glutGetWindow()}->set_closure(Idle => $sub));
  }

  sub glutReshapeFunc {
    my($sub) = @_;
    _glutReshapeFunc($windows{glutGetWindow()}->set_closure(Reshape => $sub));
  }

}

1;
