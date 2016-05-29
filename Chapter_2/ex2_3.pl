#=======================================================#
#	时间：2016年5月8日 17:27:14							#
#	功能：第二章 练习题 3								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

#!C:\Perl\bin

$PI = 3.141592654;					#圆周率
$s = 0;								#圆周长
$r = 0;								#圆半径

print "Please input the radius of circle:";
$r = <STDIN>;						#用户输入半径

if (0 gt $r) {						#当半径小于0时，当作0处理
	$r = 0;
}

$s = $r * 2 * $PI;					#计算圆周长

print "circumference = $s\n";


#===========================================================
#	时间：2016年5月8日 17:31:07							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_2>perl -w ex2_3.pl
#		Please input the radius of circle:12.5
#		circumference = 78.53981635
#		
#		F:\CC\Perl\Learning_Perl\Chapter_2>perl -w ex2_3.pl
#		Please input the radius of circle:0
#		circumference = 0
#		
#		F:\CC\Perl\Learning_Perl\Chapter_2>perl -w ex2_3.pl
#		Please input the radius of circle:-78
#		circumference = 0
#		^_^……！												
#===========================================================	
