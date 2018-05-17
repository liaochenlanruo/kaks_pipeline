#!/usr/bin/perl
my @data=glob("*.fa");
foreach (@data){
my $name=substr($_,0,(length($_)-3));
system("(parseFastaIntoAXT.pl $name.fa &)");
}
