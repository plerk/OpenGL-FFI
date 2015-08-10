#
# Based on OpenGL CodeColony tutorial
# http://www.codecolony.de/
#

use strict;
use warnings;
use OpenGL::FFI qw( :GL :GLU :GLUT );

glutInit( \(scalar @ARGV), \@ARGV );
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
glutInitWindowSize(300, 300);
glutCreateWindow("Cube example");

glLightfv(GL_LIGHT0, GL_DIFFUSE, [1.0, 0.0, 0.0, 1.0]);
glLightfv(GL_LIGHT0, GL_POSITION, [1.0, 1.0, 1.0, 0.0]);



