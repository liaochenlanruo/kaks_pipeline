#!usr/bin/perl
my @data=glob("*.aln");
foreach (@data){
    my $name=substr($_,0,(length($_)-4));
    my $in=$name.".aln";
    my $out=$name.".fas";
    open IN,"$in" or die;
    open OUT, ">>$out" or die;
    while(<IN>){
       chomp;
       if (/(\>\S+)_\S+/){
          print OUT $1."\n";
       }else{
          print OUT $_."\n";
        }
    }
}
close IN;
close OUT;
