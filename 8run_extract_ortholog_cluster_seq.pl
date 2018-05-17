#!/usr/bin/perl
my @data=glob("*.seq");
foreach (@data){
my $seqname=substr($_,0,(length($_)-4));
my $listname=substr($_,0,(length($_)-10));
my $inseq=$seqname.".seq";
my $inlist=$listname.".ancestor.list";
system("(extract_ortholog_cluster_seq.pl -i $inseq -l $inlist -o $listname.for.kaks &)");
}
