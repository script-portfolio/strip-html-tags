#!/usr/bin/perl

#
# Script to strip nested html tags. 
# Recursive function implementation
#

use strict;
use v5.10;

my $input = '<body><div class="contents"><div><strong>Hello World</strong></div></div></body>';

unless ( -t STDIN ) {
    undef $input;
    $input .=  $_ for map {chop; $_} <>;
}
say "Input: $input";
say cut($input);

sub cut {
    my $s = shift;
    my $times = $s =~ s/<(\w+)\s?.*?>(.+)<\/\1>/$2/;
    return cut($s) if $times;
    return $s;
}

