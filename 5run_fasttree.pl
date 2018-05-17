#!/usr/bin/perl
my @data=glob("*.aln");
foreach (@data){
my $name=substr($_,0,(length($_)-4));
my $in=$name.".aln";
my $out=$name.".tree";
system("(FastTree -nt -bionj -quiet -gtr -nosupport $in > $out &)");
}


