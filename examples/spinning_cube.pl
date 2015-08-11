#
# Based on OpenGL CodeColony tutorial
# http://www.codecolony.de/
#

use strict;
use warnings;
use 5.014;
use OpenGL::FFI qw( :gl :glu :glut );

my $x_rotated = 0;
my $y_rotated = 0;
my $z_rotated = 0;

glutInit(@ARGV);
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
glutInitWindowSize(300, 300);
glutCreateWindow("Cube example");
glLightfv(GL_LIGHT0, GL_DIFFUSE, [1.0, 0.0, 0.0, 1.0]);
glLightfv(GL_LIGHT0, GL_POSITION, [1.0, 1.0, 1.0, 0.0]);
glEnable(GL_LIGHT0);
glEnable(GL_LIGHTING);
glEnable(GL_CULL_FACE);
glShadeModel(GL_SMOOTH);
glClearColor(0.0, 0.0, 0.0, 0.0);
glutDisplayFunc(\&display);
glutIdleFunc(\&idle);
glutReshapeFunc(\&reshape);
glutMainLoop();

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
  $x_rotated +=  0.3;
  $y_rotated +=  0.1;
  $z_rotated += -0.4;
  display();
}

sub reshape {
  my($x,$y) = @_;
  exit if $x == 0 || $y == 0;
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  gluPerspective(30.0, $x / $y, 0.5, 20.0);
  glMatrixMode(GL_MODELVIEW);
  glViewport(0, 0, $x, $y);
}

