#=======================================================#
#	时间：2016年5月17日 21:41:55						#
#	功能：第六章 哈希 练习题 3							#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

my $max_length = 0;
my $key;
foreach $key(sort keys %ENV) {
	if ( $max_length < length($key) ) {
		$max_length = length($key);
	}
}

foreach $key(sort keys %ENV) {
	printf("%${max_length}s => %s\n", $key, $ENV{$key});
}

#===========================================================
#	时间：2016年5月17日 21:26:31							
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
