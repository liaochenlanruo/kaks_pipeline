#!/usr/bin/perl
my @data=glob("*.aln");
foreach (@data){
my $name=substr($_,0,(length($_)-4));
my $in=$name.".aln";
my $out=$name.".ancestor";
my $tree=$name.".tree";
system("(perl /home/lhl/tools/FastML.v3.1/www/fastml/FastML_Wrapper.pl --MSA_File $in --seqType codon --Tree $tree --outDir /home/lhl/Datas/kaks/temp1/$out &)");
}
