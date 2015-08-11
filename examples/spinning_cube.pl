#
# Based on OpenGL CodeColony tutorial
# http://www.codecolony.de/
#

use strict;
use warnings;
use 5.014;
use OpenGL::FFI qw( :gl :glu :glut );

glutInit(@ARGV);
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
glutInitWindowSize(300, 300);
glutCreateWindow("Cube example");
glLightfv(GL_LIGHT0, GL_DIFFUSE, [1.0, 0.0, 0.0, 1.0]);
glLightfv(GL_LIGHT0, GL_POSITION, [1.0, 1.0, 1.0, 0.0]);

my $x_rotated = 0;
my $y_rotated = 0;
my $z_rotated = 0;

sub display {
  glClear(GL_COLOR_BUFFER_BIT);
  glLoadIdentity();
  glTranslatef(0.0, 0.0, -5.0);
  glRotatef($x_rotated, 1.0, 0.0, 0.0);
  glRotatef($y_rotated, 0.0, 1.0, 0.0);
  glRotatef($z_rotated, 0.0, 0.0, 1.0);
  glScalef(2.0, 1.0, 1.0);
  glutSolidCube(1.0);
  glFlush();
  glutSwapBuffers();
}

sub idle {
  $x_rotated += 0.3;
  $y_rotated += 0.1;
  $z_rotated += -0.4;
  display();
}

my $ffi = OpenGL::FFI::_get_ffi();

our $display = $ffi->closure(\&display);
glutDisplayFunc($display);
our $idle = $ffi->closure(\&idle);
glutIdleFunc($idle);

glutMainLoop();
