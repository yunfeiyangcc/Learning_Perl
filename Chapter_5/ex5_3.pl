#=======================================================#
#	时间：2016年5月16日 21:31:42						#
#	功能：第五章 输入和输出 练习题 3					#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

print "Please enter the string:\n";
chomp( my @user_input = <STDIN> );
my $line;

print "Please enter the width:\n";
chomp ( my $user_width = <STDIN> );

my $i = 0;
my $j = 1;
while ($i < $user_width / 10) {
	$j = 1;
	while ($j <= 10 ) {
		print ($j == 10?0:$j);
		$j++;
	}
	$i++;
}
print "\n";


foreach $line (@user_input) {	
#	printf("%${user_width}s\n", $line);
	printf("%*s\n", $user_width, $line);
}



#===========================================================
#	时间：2016年5月16日 22:10:38							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_5>ex5_3.pl
#		Please enter the string:
#		hello
#		good-bye
#		22
#		^Z
#		Please enter the width:
#		12
#		12345678901234567890
#		       hello
#		    good-bye
#		          22
#		^_^……！												
#===========================================================	
