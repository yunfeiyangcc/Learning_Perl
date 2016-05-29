#=======================================================#
#	时间：2016年5月13日 21:32:34						#
#	功能：第四章 练习题 4								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

#!C:\Perl\bin

#use utf8;
#use warnings;
use strict;
use 5.010;

sub greet {
	state $name = "";
	
	if ("" eq $name) {
		$name = shift;
		print "Hi $name! You are the first one here!\n";
	} else {
		print "Hi $_[0]! $name is also here!\n";
		$name = shift;
	}
}

greet("Fred");
greet("Barney");
greet("CC");
greet("DD");


#===========================================================
#	时间：2016年5月13日 21:43:06							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_4>ex4_4.pl
#		Hi Fred! You are the first one here!
#		Hi Barney! Fred is also here!
#		Hi CC! Barney is also here!
#		Hi DD! CC is also here!
#		^_^……！												
#===========================================================	
