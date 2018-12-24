#!/usr/bin/perl
use strict;
use warnings;

open (KERNEL_LOG_HANDLE, $ARGV[0]) or die ("Can't open myfile: $!");
open (DDK_LOG_HANDLE, ">$ARGV[1]") || die ("Can't open file: $!");

while(<KERNEL_LOG_HANDLE>) {
	if (/^<.>\[(.*)\]\[\w*\]/) {
		s/^<.>\[.*\.\d*\]\[\d*:.*:\d*\]//;
		print DDK_LOG_HANDLE $_;
	}
}

close KERNEL_LOG_HANDLE;
close DDK_LOG_HANDLE;