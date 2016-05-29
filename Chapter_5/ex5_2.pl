#=======================================================#
#	时间：2016年5月16日 21:11:11						#
#	功能：第五章 输入和输出 练习题 2					#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

print "Please enter the string:\n";

my @user_input = <STDIN>;
my $line;

my $i = 0;
my $j = 1;
while ($i < 6) {
	$j = 1;
	while ($j <= 10) {
		print ($j == 10?0:$j);
		$j++;
	}
	$i++;
}
print "\n";


foreach $line (@user_input) {	
	printf("%21s", $line);
}



#===========================================================
#	时间：2016年5月16日 21:29:06							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_5>ex5_2.pl
#		Please enter the string:
#		hello
#		good-bye
#		^Z
#		123456789012345678901234567890123456789012345678901234567890
#		               hello
#		            good-bye
#		^_^……！												
#===========================================================	
