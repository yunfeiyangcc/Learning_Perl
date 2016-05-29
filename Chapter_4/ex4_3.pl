#=======================================================#
#	时间：2016年5月13日 21:12:35						#
#	功能：第四章 练习题 3								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

#!C:\Perl\bin

#use utf8;
#use warnings;
use strict;

sub average {
	my $count = 0;
	my $sum = 0;
	
	foreach ( @_ ) {
		$count++;
		$sum += $_;
	}
		
	return $sum / $count;
}

sub above_average {
	
	my @above_num;
	my $average_num = &average(@_);
	
	
	foreach ( @_ ) {
		if ($_ > $average_num) {
			push @above_num, $_;
		}
	}
	
	return @above_num;
}


my @fred = &above_average(1..10);
print "\@fred is (@fred)\n";

my @barney = &above_average(100, 1..10);
print "\@barney is (@barney)\n";


#===========================================================
#	时间：2016年5月13日 21:31:29							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_4>ex4_3.pl
#		@fred is (6 7 8 9 10)
#		@barney is (100)
#		^_^……！												
#===========================================================	
