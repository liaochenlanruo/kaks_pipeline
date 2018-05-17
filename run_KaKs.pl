#!/usr/bin/perl
my @data=glob("*.axt");
foreach (@data){
my $name=substr($_,0,(length($_)-4));
my $in=$name.".axt";
my $out=$name.".re";
system("(KaKs_Calculator -i $in -o $out  -c 11 -m NG &)");
}
