#=======================================================#
#	时间：2016年5月10日 21:23:33						#
#	功能：第三章 练习题 3								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

#!C:\Perl\bin

#use utf8;
#use warnings;

@string_list = ();

print ("Please enter the string:\n");
chomp (@string_list = <STDIN>);

@string_list = sort @string_list;

print "The 1 row result: \n";
print "@string_list";
print "\n";

print "The different row result: \n";
foreach (@string_list) {
	print "$_\n";
}


#===========================================================
#	时间：2016年5月10日 21:22:25							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_3>ex3_3.pl
#		Please enter the string:
#		fred
#		barney
#		wilma
#		betty
#		^Z
#		The 1 row result:
#		barney betty fred wilma
#		The different row result:
#		barney
#		betty
#		fred
#		wilma
#		^_^……！												
#===========================================================	
