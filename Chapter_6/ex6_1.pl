#=======================================================#
#	时间：2016年5月17日 21:11:07						#
#	功能：第六章 哈希 练习题 1							#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

my %last_name = (
	fred 	=> 'flintstone',
	barney	=> 'rubble',
	wilma	=> 'flintstone',
);

print "Please enter the name:\n";
chomp (my $name = <STDIN>);

if (exists $last_name{$name}) {
	print "$name => $last_name{$name}\n";
} else {
	print "No key:$name";
}


#===========================================================
#	时间：2016年5月17日 21:26:31							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_6>ex6_1.pl
#		Please enter the name:
#		ds
#		No key:ds
#		F:\CC\Perl\Learning_Perl\Chapter_6>ex6_1.pl
#		Please enter the name:
#		wilma
#		wilma => flintstone
#		
#		F:\CC\Perl\Learning_Perl\Chapter_6>ex6_1.pl
#		Please enter the name:
#		barney
#		barney => rubble
#		^_^……！												
#===========================================================	
