#=======================================================#
#	时间：2016年5月13日 21:07:58						#
#	功能：第四章 练习题 2								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
#use warnings;
use strict;

sub total {
	
	my $sum = 0;
	
	foreach ( @_ ) {
		$sum += $_;
	}
	
	return $sum;
}

my @fred = {1..1000};
my $fred_total = total(@fred);
print "The total of 1..1000 is $fred_total\n";

#===========================================================
#	时间：2016年5月13日 21:11:29							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_4>ex4_2.pl
#		The total of 1..1000 is 8359964
#		^_^……！												
#===========================================================	
