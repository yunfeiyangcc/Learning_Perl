#=======================================================#
#	时间：2016年5月17日 21:29:08						#
#	功能：第六章 哈希 练习题 2							#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

my %word_count;

print "Please enter the word:\n";
chomp (my @words = <STDIN>);

foreach my $word (@words) {
	if (exists $word_count{$word}) {
		$word_count{$word}++;
	} else {
		$word_count{$word} = 1;
	}
}

foreach my $key(sort keys %word_count) {
	print "$key => $word_count{$key}\n";
}

#===========================================================
#	时间：2016年5月17日 21:41:48							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_6>ex6_2.pl
#		Please enter the word:
#		fred
#		barney
#		fred
#		dino
#		wilma
#		fred
#		^Z
#		barney => 1
#		dino => 1
#		fred => 3
#		wilma => 1
#		^_^……！												
#===========================================================	
