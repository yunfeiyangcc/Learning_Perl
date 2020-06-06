#=======================================================#
#	时间：2016年06月04日10:16:13								#
#	功能：第八章 正则表达式 练习题 4							#
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
	if ( /(?<word>\b\w*a\b)/ ) {
		print "Matched: \t|\t$` <$&> $'\n";
		print "\$word contains '$+{word}'\n";
	} else {
		print "No match: \t|\t$_\n";
	}
}



#===========================================================
#	时间：2016年06月04日10:19:45							
#	结果：												
#		No match: 	|	match
#		No match: 	|	beforematchafter
#		No match: 	|	
#		Matched: 	|	 <wilma> 
#		$word contains 'wilma'
#		No match: 	|	barney
#		No match: 	|	Mrs.WilmaFilintsone
#		Matched: 	|	 <wilma> &fred
#		$word contains 'wilma'
#		^_^……！												
#===========================================================	









