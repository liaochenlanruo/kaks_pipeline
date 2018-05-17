#!/usr/bin/perl
use strict;
use warnings;

my %hash;
open IN,"type.list" || die;
while (<IN>) {
	chomp;
	if (/(\S+)\t(\S+)/) {
		$hash{$1} = $2;
	}
}
close IN;

open INF,"all.pure.kaks" || die;
open OUT,">all.type.kaks" || die;
while (<INF>) {
	chomp;
	if (/^((\d+[a-zA-Z]+\d+)\S+)-N/) {
		if (exists $hash{$2}) {
			print OUT $hash{$2} . "\t" . $1 . "\t" . $_ . "\n";
		}else{
		    print OUT "CK" . "\t" . $1 . "\t" . $_ . "\n";
		}
	}
}
close IN;
close OUT;
