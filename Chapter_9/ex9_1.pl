#=======================================================#
#	时间：2016年06月05日19:40:35								#
#	功能：第九章 用正则表达式处理文本 练习题 1					#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

my @whats = qw{
	fred
	fred|barney
	barney
};

foreach my $what (@whats) {
	chomp $what;

	my @what_split = split /\|/, $what;
	my $what_split_num = @what_split;
	my $what_join_num = $what_split_num**3;
	print "\@what_split = @what_split --- count = $what_split_num\n";
	print "\$what_join_num = $what_join_num\n";

	for (my $i = 0; i < $what_split_num; i++) {
		
	}
	

#	if ( ($what_join x 3) =~ /($what){3}/) {
#		print "Matched: \t|\t$` <$&> $'\n";
#	} else {
#		print "No match: \t|\t$_\t|\n";
#	}
}



#===========================================================
#	时间：2016年06月04日09:32:25							
#	结果：												

#		^_^……！												
#===========================================================	
