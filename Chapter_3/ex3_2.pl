#=======================================================#
#	时间：2016年5月10日 21:16:35						#
#	功能：第三章 练习题 2								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

#!C:\Perl\bin

#use utf8;
#use warnings;

@name_list = qw { fred betty barney dino wilma pebbles bamm-bamm };
@name_index = ();

print ("Please enter <7 number:\n");
chomp (@name_index = <STDIN>);

print "The result: ";
foreach (@name_index) {
	print "$name_list[$_ - 1] ";
}


#===========================================================
#	时间：2016年5月10日 21:22:25							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_3>ex3_2.pl
#		Please enter <7 number:
#		1
#		2
#		4
#		2
#		^Z
#		The result: fred betty dino betty
#		^_^……！												
#===========================================================	
