#=======================================================#
#	时间：2016年5月8日 17:31:45							#
#	功能：第二章 练习题 4								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

$num1 = 0;					#用户输入数1
$num2 = 0;					#用户输入数2
$product = 0;				#用户输入两个数的乘积

print "Please input the first number:";
chomp ($num1 = <STDIN>);						#用户输入第一个数
print "Please input the second number:";
chomp ($num2 = <STDIN>);						#用户输入第一个数

$product = $num1 * $num2;						#计算用户输入两个数的乘积

print "${num1} * ${num2} = ${product}\n";


#===========================================================
#	时间：2016年5月8日 17:40:16							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_2>perl -w ex2_4.pl
#		Please input the first number:5
#		Please input the second number:9
#		5 * 9 = 45
#		^_^……！												
#===========================================================	
