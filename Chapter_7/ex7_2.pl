#=======================================================#
#	时间：2016年5月23日 21:15:42						#
#	功能：第七章 正则表达式 练习题 2					#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

while (<>) {
	if (/(f|F)red/) {
		print $_;
	}
}



#===========================================================
#	时间：2016年5月23日 21:18:07							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_7>ex7_2.pl test.txt
#		fred flintstone
#		Fred
#		frederick
#		Alfred
#		^_^……！												
#===========================================================	
