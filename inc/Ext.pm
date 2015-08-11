use strict;
use warnings;
use 5.014;

package Ext {

  sub convert_binary_c {
    my $c = Convert::Binary::C->new;
    $c->Include(qw(
      /usr/include
      /usr/include/x86_64-linux-gnu/
      /usr/include/linux
    ));
    $c->Define(qw( __x86_64__ __unix__ __POSIX__ ));
    $c->parse(q{
      typedef unsigned long int size_t;
      typedef signed long int ptrdiff_t;
      typedef unsigned short int wchar_t;
    });
    
    $c;
  }
  
}

1;
