#=======================================================#
#	时间：2016年5月10日 21:13:11						#
#	功能：第三章 练习题 1								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
#use warnings;

chomp (@some_string = <STDIN>);

@some_string = reverse @some_string;

print "The reverse result: @some_string";

#===========================================================
#	时间：2016年5月10日 21:16:15							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_3>ex3_1.pl
#		123
#		456
#		789
#		^Z
#		The reverse result: 789 456 123
#		^_^……！												
#===========================================================	
