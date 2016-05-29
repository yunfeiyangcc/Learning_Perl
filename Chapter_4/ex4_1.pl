#=======================================================#
#	时间：2016年5月13日 20:54:18						#
#	功能：第四章 练习题 1								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

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

my @fred = qw{1 3 5 7 9};
my $fred_total = total(@fred);
print "The total of (@fred) is $fred_total\n";


print "Enter some numbers on separate lines\n";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total";

#===========================================================
#	时间：2016年5月13日 21:07:23							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_4>ex4_1.pl
#		The total of (1 3 5 7 9) is 25
#		Enter some numbers on separate lines
#		1
#		2
#		3
#		4
#		5
#		6
#		7
#		8
#		9
#		^Z
#		The total of those numbers is 45
#		^_^……！												
#===========================================================	
