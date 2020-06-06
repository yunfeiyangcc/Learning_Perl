#=======================================================#
#	时间：2016年06月02日22:04:22								#
#	功能：第八章 正则表达式 练习题 1							#
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
	if (/(match)/) {
		print "Matched: \t|\t$` <$&> $'\n";
	} else {
		print "No match: \t|\t$_\t|\n";
	}
}



#===========================================================
#	时间：2016年06月04日09:32:25							
#	结果：												
#		cc@cc-linux:/media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_8$ perl ex8_1.pl test.txt 
#		Matched: 	|	 <match> 
#		Matched: 	|	before <match> after
#		^_^……！												
#===========================================================	
