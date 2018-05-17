#!/usr/bin/perl
my @data=glob("*.ancestor");
foreach (@data){
my $name=substr($_,0,(length($_)-9));
my $in=$name.".ancestor";
system("cp $in/tree.ancestor.txt ./$name.ancestor.raw.list");
system("cp $in/seq.joint.txt ./$name.joint.seq");
}
