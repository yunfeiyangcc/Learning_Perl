#=======================================================#
#	时间：2016年06月09日16:45:28								#
#	功能：第十章 其他控制结构 练习题 1							#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

my $secret_num = int(1 + rand 100);
my $input_num;

while (1) {
	print "Please enter a guess form 1 to 100: ";
	chomp ($input_num = <STDIN>);
	if ( $input_num =~ m/quit|exit|\A\s*\z/i ) {
		die "Sorry you gave up. The number was $secret_num\n";
	} elsif ( $input_num =~ m/\D+/ ) {
		print "The number you entered is not a digit! Try again! \n";
	} elsif ($input_num > $secret_num) {
		print "Too height. Try again!\n";
	} elsif ($input_num < $secret_num) {
		print "Too low. Try again!\n";
	} else {
		print "You are right!\n";
		last;
	}

#	($input_num =~ m/quit|exit|\A\s*\z/i) ? die "Sorry you gave up. The number was $secret_num\n" :
#	$input_num =~ m/\D+/ ? print "The number you entered is not a digit! Try again! \n" :
#	$input_num > $secret_num ? print "Too height. Try again!\n":
#	$input_num < $secret_num ? print "Too low. Try again!\n" :  { print "You are right!\n" and last };


}

#===========================================================
#	时间：2016年06月09日17:53:19							
#	结果：												
# 		cc@cc-linux:/media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_10$ perl ex10_1.pl 
# 		Please enter a guess form 1 to 100: gs
# 		The number you entered is not a digit! Try again! 
# 		Please enter a guess form 1 to 100: 54
# 		Too low. Try again!
# 		Please enter a guess form 1 to 100: 85
# 		Too height. Try again!
# 		Please enter a guess form 1 to 100: 76
# 		Too low. Try again!
# 		Please enter a guess form 1 to 100: 77
# 		Too low. Try again!
# 		Please enter a guess form 1 to 100: 79
# 		Too low. Try again!
# 		Please enter a guess form 1 to 100: 80
# 		Too low. Try again!
# 		Please enter a guess form 1 to 100: 82
# 		Too low. Try again!
# 		Please enter a guess form 1 to 100: 83
# 		You are right!
#		^_^……！												
#===========================================================	
