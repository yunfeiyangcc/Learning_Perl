#=======================================================#
#	时间：2016年5月7日 16:18:18							#
#	功能：第二章 测试程序								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
#use warnings;
#use diagnostics;

#各种进制的表示方法
print "binary:0377\t= decimal:" , 0b11111111 , "\n";			#这里是用逗号隔开的列表
print "octal:0377\t= decimal:" . 0377 . "\n";					#这里是用字符串连接符.将字符串连接起来
print "decimal:0377\t= decimal:" . 255 . "\n";
print "hex:0377\t= decimal:" . 0xFF . "\n";
print "\n";

#如果数字比较长，可以用下划线隔开，不影响数字的表示，容易看
print "123_456\t\t= decimal:" . 123_456 . "\n";
print "0X1_E240\t= decimal:" . 0X1_E240 . "\n";
print "\n";

print "2**3\t\t= " . 2**3 . "\n";			#2的3次方
print "\n";

print 'hello\n';				#单引号''中的\n不表示换行
print "hello\n";				#双引号""中的\n表示换行
print "\n";

#字符串的重复操作
print "hello" x 3;				#等于字符串"hellohellohello"
print "\n";
print "binary" x (4+1);			#等于字符串"binarybinarybinarybinarybinary"
print "\n";
print "binary" x 4+1;			#等于数字1
print "\n";
print 5 x 4.8;					#等于字符串"5555"
print "\n";
print 5 x 4 . 8;				#等于字符串"55558"
print "\n";
print 0377 + 1;					#等于数字256
print "\n";
print '0377' + 1;				#等于数字378, 字符串和数字运算时，字符串按照十进制的形式转换成数字
print "\n";


$fred = 'hello';
print "The name is $fred.\n";			#The name is hello.
print "The name is \$fred.\n";			#The name is $fred.
print "The name is $fredcc.\n";			#The name is .
print "The name is ${fred}cc.\n";		#The name is hellocc.

print chr( 63 );						#将代码点转换为字符
print "\n";
print ord( '?' );						#将字符转换为代码点
print "\n";

#布尔值
if (35 != 30 + 5) {						#It's false
	print "35 != 30 + 5\n"
} else {
	print "35 == 30 + 5\n"
}

$still_true = !!'Fred';
$still_false = !!'0';

if (1 == $still_true) {
	print "variable \$still_ture is still ture\n"
}

if (undef == $still_false) {
	print "variable \$still_false is still false\n"
}

#用户输入
$line = <STDIN>;
if ($line eq "\n") {
	print "That was just a blank line!\n";		#没有输入，直接回车
} else {
	print "That line of input was: $line";
}

#chomp 操作符
$betty = chomp ($text = <STDIN>);				#去除回车，并返回去除字符的个数
print $text;									#$text已经没有回车符号了
print "\n";
print $betty;
print "\n";

print undef;									#没有输出任何东西，会引发警告信息

#defined 函数
chomp( $madonna = <STDIN> );
if ( defined($madonna) ) {						#终端输入，无法使用这样的check，读取文件时再测试
	print "The input was $madonna";
} else {
	print "No input available!\n";
}

#===========================================================
#	时间：2016年5月8日 09:39:34							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_2>ex2_test_1.pl
#		binary:0377     = decimal:255
#		octal:0377      = decimal:255
#		decimal:0377    = decimal:255
#		hex:0377        = decimal:255
#		
#		123_456         = decimal:123456
#		0X1_E240        = decimal:123456
#		
#		2**3            = 8
#		
#		hello\nhello
#		
#		hellohellohello
#		binarybinarybinarybinarybinary
#		1
#		5555
#		55558
#		256
#		378
#		The name is hello.
#		The name is $fred.
#		The name is .
#		The name is hellocc.
#		?
#		63
#		35 == 30 + 5
#		variable $still_ture is still ture
#		variable $still_false is still false
#		cc
#		That line of input was: cc
#		remove the CRLF
#		remove the CRLF
#		1
#		test defined function.
#		The input was test defined function.
#		^_^……！												
#===========================================================	
