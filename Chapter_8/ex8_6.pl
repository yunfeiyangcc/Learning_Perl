#=======================================================#
#	时间：2016年06月04日10:45:39								#
#	功能：第八章 正则表达式 练习题 5							#
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
	if ( /\s\z/ ) {
		print "Matched: | $_# \n";
	} else {
		print "No match: \n";
	}
}



#===========================================================
#	时间：2016年06月04日11:02:24							
#	结果：												
#		cc@cc-linux:/media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_8$ perl ex8_6.pl 
#		abcd
#		No match: 
#		abcd  
#		Matched: | abcd  # 
#		^_^……！												
#===========================================================	









