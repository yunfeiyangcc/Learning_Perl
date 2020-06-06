#=======================================================#
#	时间：2016年5月23日 21:36:32						#
#	功能：第七章 正则表达式 练习题 6					#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

while (<>) {
	if (/wilma.*fred|fred.*wilma/) {
		print $_;
	}
}



#===========================================================
#	时间：2016年5月23日 21:40:34							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_7>ex7_6.pl test.txt
#		wilma fred
#		wilma abcde fred fg
#		fred gsagds wilma gjwssssssssssh
#		^_^……！												
#===========================================================	
