#=======================================================#
#	时间：2016年06月06日20:20:48								#
#	功能：第九章 用正则表达式处理文本 练习题 4					#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

my %do_filename;

foreach (@ARGV) {
	$do_filename{$_} = 1;
}

while (<>) {
	if (/\A## Copyright/) {
		delete $do_filename{$ARGV};
	}
}

@ARGV = sort keys %do_filename;
if (0 < @ARGV)
{
	$^I = "";
	while (<>) {
		s/^#!/## Copyright (C) 2016 by CC\n#!/i;
		print;
	}
}


#===========================================================
#	时间：2016-06-06 20:37:37							
#	结果：												
#		^_^……！												
#===========================================================
