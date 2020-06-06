#=======================================================#
#	时间：2016年06月04日09:50:26								#
#	功能：第八章 正则表达式 练习题 2							#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

while (<>) {
	chomp;
	if ( /a\b/ ) {
		print "Matched: \t|\t$` <$&> $'\n";
	} else {
		print "No match: \t|\t$_\n";
	}
}



#===========================================================
#	时间：2016年06月04日09:55:37							
#	结果：												
#		No match: 	|	match
#		No match: 	|	beforematchafter
#		No match: 	|	
#		Matched: 	|	wilm <a> 
#		No match: 	|	barney
#		No match: 	|	Mrs.WilmaFilintsone
#		Matched: 	|	wilm <a> &fred
#		^_^……！												
#===========================================================	
