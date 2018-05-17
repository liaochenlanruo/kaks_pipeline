#!/usr/bin/perl -w
use strict;

my @file = glob("*.ancestor.raw.list");
foreach  (@file) {
	$_=~/(.+).raw.list/;
	my $out = $1 . ".list";
	open IN,"$_" || die;
	open OUT,">$out" || die;
	while (<IN>) {
		chomp;
		my @lines = split;
		if (@lines == 2) {
			print OUT $lines[0] . "\t" . "N1" . "\n";
		}
	}
}
close IN;
close OUT;
