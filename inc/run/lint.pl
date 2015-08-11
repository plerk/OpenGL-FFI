use strict;
use warnings;
use 5.014;
use Path::Class qw( dir );
use YAML::XS qw( LoadFile );
use lib 'inc';
use Gen::Mod;

foreach my $ymlfile (grep { $_->basename =~ /\.yml$/ } grep { ! $_->is_dir } dir('inc/data')->children)
{
  my $mod = LoadFile($ymlfile);
  say "FILE $ymlfile";
  $mod->lint;
}
