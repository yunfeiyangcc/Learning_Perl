#=======================================================#
#	时间：2016年06月06日19:39:44								#
#	功能：第九章 用正则表达式处理文本 练习题 3					#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

my $in = $ARGV[0];

if (!defined($in)) {
	die "Usage: $0 filename";
}

(my $out = $in) =~ s/\.\w+$/.out/;

if ( ! open IN, '<', $in ) {
	die "Can't open filename  $in : $!";
}

if ( ! open OUT, '>', $out ) {
	die "Can't open filename $out : $!";
}

while (<IN>) {
	chomp;
	s/fred/\n/gi;
	s/wilma/Fred/gi;
	s/\n/Wilma/g;
	print OUT "$_\n";
}


#===========================================================
#	时间：2016年06月06日19:56:32							
#	结果：												
#		^_^……！												
#===========================================================	
