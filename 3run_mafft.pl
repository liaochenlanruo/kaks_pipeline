#!/usr/bin/perl
my @data=glob("*.fa");
foreach (@data){
my $name=substr($_,0,(length($_)-3));
my $in=$name.".fa";
my $out=$name.".aln";
system("(mafft --maxiterate 1000 --localpair $in > $out &)");
}
