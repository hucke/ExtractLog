#!/usr/bin/perl
use strict;
use warnings;

open (MYHANDLE, $ARGV[0]) or die ("Can't open myfile: $!");
open (DDK_LOG_HANDLE, ">$ARGV[1]") || die ("Can't open logfile.txt");

while(<MYHANDLE>) {
	if (/\[+\w*\]+\[+\w*]+/) { 
		s/\[+\w*\]+//;
		print DDK_LOG_HANDLE $_;
		}
}

close MYHANDLE;
close DDK_LOG_HANDLE;