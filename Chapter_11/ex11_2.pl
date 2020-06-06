#=======================================================#
#	时间：2016年06月14日21:21:53								#
#	功能：第十一章 Perl 模块 练习题 2							#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;
#use Time::Piece;
use DateTime;

my $t_local = localtime;

my $dt_local = DateTime->new (
#		year => $t_local->year,
#		month => $t_local->month,
#		day => $t_local->day,
		year => 2016,
		month => 06,
		day => 14,
	);

my $dt_input = DateTime->new (
		year => $ARGV[0],
		month => $ARGV[1],
		day => $ARGV[2],
	);

my $duration = $dt_input - $dt_local;

my @units = $duration->in_units( qw(year month day) );

printf ("%d years, %d months, and %d days", @units);

#===========================================================
#	时间：2016年06月14日21:20:17							
#	结果：												
#		^_^……！												
#===========================================================	
