#=======================================================#
#	时间：2016年5月13日 21:44:08						#
#	功能：第四章 练习题 5								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
#use warnings;
use strict;
use 5.010;

sub greet {
	state @name;
	
	if ("" eq @name[0]) {
		push @name, @_[0];
		print "Hi @name[0]! You are the first one here!\n";
	} else {
		print "Hi $_[0]! I've seen: @name\n";
		push @name, @_[0];
	}
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");


#===========================================================
#	时间：2016年5月13日 21:49:14							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_4>ex4_5.pl
#		Hi Fred! You are the first one here!
#		Hi Barney! I've seen: Fred
#		Hi Wilma! I've seen: Fred Barney
#		Hi Betty! I've seen: Fred Barney Wilma
#		^_^……！												
#===========================================================	
