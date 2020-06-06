#=======================================================#
#	时间：2016年06月15日20:16:29								#
#	功能：第十二章 文件测试 练习题 2							#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

$_ = $ARGV[0];
chmod;

unless ( -e ) {
	print "The file $_ is not exist!\n";
	exit;
}

print "read\t" if -r _;
print "write\t" if -w _;
print "execute\t" if -x _;
print "\n";

#===========================================================
#	时间：2016年06月15日20:52:04							
#	结果：												
#		cc@cc-linux:/media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_12$ ll /home/cc/perl5/bin/instmodsh 
#		-r-xr-xr-x 1 cc cc 4156  6月 14 20:43 /home/cc/perl5/bin/instmodsh*
#		cc@cc-linux:/media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_12$ perl ex12_1.pl /home/cc/perl5/bin/instmodsh 
#		read	execute	
#		cc@cc-linux:/media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_12$ perl ex12_1.pl /home/cc/perl5/man/man1/
#		read	write	execute	
#		cc@cc-linux:/media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_12$ perl ex12_1.pl /home/cc/perl5/man/ma
#		The file /home/cc/perl5/man/ma is not exist!
#		^_^……！												
#===========================================================	
