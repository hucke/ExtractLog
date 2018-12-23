#!/usr/bin/perl
use strict;
use warnings;

open (MYHANDLE, $ARGV[0]) or die ("Can't open myfile: $!");
open (LOG, ">logfile.txt") || die ("Can't open logfile.txt");

while(<MYHANDLE>) {
	if (/\[+\w*\]+\[+\w*]+/) { print LOG $_; }
}

close MYHANDLE;
close LOG;