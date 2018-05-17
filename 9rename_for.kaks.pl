#!/usr/bin/perl
my @data=glob("*.for.kaks");
foreach (@data){
my $name=substr($_,0,(length($_)-9));
my $in=$name.".for.kaks";
system("cd $in && rename OG $name *");
}
