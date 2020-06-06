#=======================================================#
#	时间：2016年06月05日10:07:22								#
#	功能：第九章 正则表达式 test								#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;
use 5.014;

my $test_str = "green scaly dinosaur";

$test_str =~ s/(\w+) (\w+)/$2, $1/;
print $test_str . "\n";

$test_str =~ s/^/huge, /;
print $test_str . "\n";

$test_str =~ s/,.*een//;
print $test_str . "\n";

$test_str =~ s/green/red/;
print $test_str . "\n";

$test_str =~ s/\w+$/($`!)$&/;
print $test_str . "\n";

$test_str =~ s/\s+(!\W+)/$1 /;
print $test_str . "\n";

$test_str =~ s/huge/gigantic/;
print $test_str . "\n";

print "无损替换\n";
print "----------------------------------------------------------------------------------------------------------------\n";
my $original = 'Fred ate 1 rib';
(my $copy = $original) =~ s/\d+ ribs?/10 ribs/;
print "\$original = " . $original . "\n";
print "\$copy = " . $copy . "\n\n";

my $original_1 = 'Fred ate 1 rib';
my $copy_1 = $original_1 =~ s/\d+ ribs?/10 ribs/r;
print "\$original_1 = " . $original_1 . "\n";
print "\$copy_1 = " . $copy_1 . "\n\n";

print "大小写转换\n";
print "----------------------------------------------------------------------------------------------------------------\n";
$test_str = "I saw Barney with Fred.";
$test_str =~ s/(fred|Barney)/\U$1/gi;
print $test_str . "\n\n";

$test_str = "I saw Barney with Fred.";
$test_str =~ s/(fred|Barney)/\L$1/gi;
print $test_str . "\n\n";

$test_str = "I saw Barney with Fred.";
$test_str =~ s/(\w+) with (\w+)/\U$2 with $1/gi;
print $test_str . "\n\n";
$test_str = "I saw Barney with Fred.";
$test_str =~ s/(\w+) with (\w+)/\U$2\E with $1/gi;
print $test_str . "\n\n";

$test_str = "I saw Barney with frED.";
$test_str =~ s/(\w+) with (\w+)/\u$2 with $1/gi;			#\u, \l :小写的只对紧跟其后的第一个字符有效
print $test_str . "\n\n";

$test_str = "I saw Barney with frED.";
$test_str =~ s/(\w+) with (\w+)/\u\L$2 with $1/gi;			#首字母大写，其余的小写
print $test_str . "\n\n";

my $name = "chUNChuN";
print "Hello, \L\u$name\E, would you like to play a game?\n\n";

print "跨行模式匹配\n";
print "----------------------------------------------------------------------------------------------------------------\n";
$_ = "I'm much better\nthan Barney is\nat bowling,\nWilma.\n";
if (/^wilma\b/im) {
	print "Found 'wilma' at start of line\n";
}

my $filename = "test.txt";
open FILE, $filename
	or die "Can't open '$filename': $!";
my $line = join '', <FILE>;
$line =~ s/^/$filename: /gm;
print $line . "\n\n";

print "一次更新多个文件\n";
print "----------------------------------------------------------------------------------------------------------------\n";
chomp(my $date = `date`);
#$^I = "";					#直接修改原始文件，不进行备份
$^I = ".bak";					#会备份原始文件，并命名为“原始文件名.bak”

while (<>) {
	s/^Author:.*/Author: Randal L. Schwartz/;
	s/^Phone:.*\n//;
	s/^Date:.*/Date: $date/;
	print;
}

print "从命令行直接编辑\n";
print "----------------------------------------------------------------------------------------------------------------\n";
#命令行输入：perl -p -i.bak -w -e 's/granite/graniteer/g' test2.txt
#等效于下面代码
$^I = ".bak";

while (<>) {						#要运行此段代码，需要将上面98行的那段代码注释了，因为一个程序只能出现一个钻石操作符
	s/granite/graniteer/g;
	print;
}



#===========================================================
#	时间：2016年06月05日19:39:25							
#	结果：												
#		cc@cc-linux:/media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_9$ perl ex9_test.pl test2.txt
#		scaly, green dinosaur
#		huge, scaly, green dinosaur
#		huge dinosaur
#		huge dinosaur
#		huge (huge !)dinosaur
#		huge (huge!) dinosaur
#		gigantic (huge!) dinosaur
#		无损替换
#		----------------------------------------------------------------------------------------------------------------
#		$original = Fred ate 1 rib
#		$copy = Fred ate 10 ribs
#		
#		$original_1 = Fred ate 1 rib
#		$copy_1 = Fred ate 10 ribs
#		
#		大小写转换
#		----------------------------------------------------------------------------------------------------------------
#		I saw BARNEY with FRED.
#		
#		I saw barney with fred.
#		
#		I saw FRED WITH BARNEY.
#		
#		I saw FRED with Barney.
#		
#		I saw FrED with Barney.
#		
#		I saw Fred with barney.
#		
#		Hello, Chunchun, would you like to play a game?
#		
#		跨行模式匹配
#		----------------------------------------------------------------------------------------------------------------
#		Found 'wilma' at start of line
#		test.txt: match
#		test.txt: beforematchafter
#		test.txt: 
#		test.txt: wilma
#		test.txt: I saw Wilma yesterday
#		test.txt: barney
#		test.txt: Mrs.WilmaFilintsone
#		test.txt: wilma&fred
#		
#		一次更新多个文件
#		----------------------------------------------------------------------------------------------------------------
#		从命令行直接编辑
#		----------------------------------------------------------------------------------------------------------------
#		^_^……！												
#===========================================================	
