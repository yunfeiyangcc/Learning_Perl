#=======================================================#
#	时间：2016年5月8日 17:40:24							#
#	功能：第二章 练习题 5								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

#!C:\Perl\bin

$string = "";				#用户输入的字符串
$num = 0;					#用户输入的数字
$stringXnum = "";			#输出的结果

print "Please input the string:";
$string = <STDIN>;								#用户输入的字符串
print "Please input the number:";
chomp ($num = <STDIN>);							#用户输入的数字

$stringXnum = $string x $num;					#取到输出结果

print $stringXnum;


#===========================================================
#	时间：2016年5月8日 17:45:06							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_2>perl -w ex2_5.pl
#		Please input the string:fred
#		Please input the number:6
#		fred
#		fred
#		fred
#		fred
#		fred
#		fred
#		^_^……！												
#===========================================================	
