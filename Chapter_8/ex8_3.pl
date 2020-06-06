#=======================================================#
#	时间：2016年06月04日09:57:09								#
#	功能：第八章 正则表达式 练习题 3							#
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
	if ( /(\b\w*a\b)/ ) {
		print "Matched: \t|\t$` <$&> $'\n";
		print "\$1 contains '$1'\n";
	} else {
		print "No match: \t|\t$_\n";
	}
}



#===========================================================
#	时间：2016年06月04日10:15:09							
#	结果：												
#		No match: 	|	match
#		No match: 	|	beforematchafter
#		No match: 	|	
#		Matched: 	|	 <wilma> 
#		$1 contains 'wilma'
#		No match: 	|	barney
#		No match: 	|	Mrs.WilmaFilintsone
#		Matched: 	|	 <wilma> &fred
#		$1 contains 'wilma'
#		^_^……！												
#===========================================================	









