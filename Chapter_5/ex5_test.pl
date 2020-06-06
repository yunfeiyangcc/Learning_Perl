#=======================================================#
#	时间：2016年5月15日 19:51:18						#
#	功能：第五章 输入和输出 测试程序					#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

#输入一行，输出一行
#while ( <STDIN> ) {				#等效于:	while ( defined($_ = <STDIN>) ) {
#	print "I saw $_\n";			#				print "I saw $_\n";
#}								#			}
#输出结果：
#-----------------------------------------------------------------------------------------
#	F:\CC\Perl\Learning_Perl\Chapter_5>ex5_test.pl
#	1
#	I saw 1
#	2
#	I saw 2
#	3
#	I saw 3
#-----------------------------------------------------------------------------------------

#当所有输入都完成并按下Ctrl+Z后，才输出结果
#foreach ( <STDIN> ) {				#等效于:	while ( defined($_ = <STDIN>) ) {
#	print "I saw $_\n";			#				print "I saw $_\n";
#}								#			}
#输出结果：
#-----------------------------------------------------------------------------------------
#	F:\CC\Perl\Learning_Perl\Chapter_5>ex5_test.pl
#	1
#	2
#	3
#	^Z
#	I saw 1
#	I saw 2
#	I saw 3
#-----------------------------------------------------------------------------------------

#钻石操作符
#my $line;
#while ( defined($line = <>) ) {
#	chomp($line);
#	print ("It was $line that I saw!\n");
#}

#while ( <> ) {
#	chomp;
#	print ("It was $_ that I saw!\n");
#}

#输出结果：
#-----------------------------------------------------------------------------------------
#	F:\CC\Perl\Learning_Perl\Chapter_5>ex5_test.pl fred - betty
#	It was 123 that I saw!
#	It was 456 that I saw!
#	It was 789 that I saw!
#	input 1
#	It was input 1 that I saw!
#	input 2
#	It was input 2 that I saw!
#	^Z
#	It was abc that I saw!
#	It was def that I saw!
#	It was ghi that I saw!
#-----------------------------------------------------------------------------------------

#钻石操作符<> 会去读取数组#ARGV中的内容作为钻石操作符<>的输入
#@ARGV = qw# fred - betty #;
#while ( <> ) {
#	chomp;
#	print ("It was $_ that I saw in some stooge-like file!\n");
#}
#输出结果：
#-----------------------------------------------------------------------------------------
#	F:\CC\Perl\Learning_Perl\Chapter_5>ex5_test.pl
#	It was 123 that I saw in some stooge-like file!
#	It was 456 that I saw in some stooge-like file!
#	It was 789 that I saw in some stooge-like file!
#	input 3
#	It was input 3 that I saw in some stooge-like file!
#	^Z
#	It was abc that I saw in some stooge-like file!
#	It was def that I saw in some stooge-like file!
#	It was ghi that I saw in some stooge-like file!
#-----------------------------------------------------------------------------------------

my @items = qw(wilma dino pebbles);
my $format = "The items are:\n" . ("%10s\n" x @items);
printf ($format, @items);				#printf ("The items are:\n%10s\n%10s\n%10s\n", @items);

#输出结果：
#-----------------------------------------------------------------------------------------
#	F:\CC\Perl\Learning_Perl\Chapter_5>ex5_test.pl
#	The items are:
#	     wilma
#	      dino
#	   pebbles
#-----------------------------------------------------------------------------------------

#===========================================================
#	时间：2016年5月10日 21:10:27							
#	结果：												
#		^_^……！												
#===========================================================	
