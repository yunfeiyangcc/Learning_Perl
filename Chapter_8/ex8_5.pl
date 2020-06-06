#=======================================================#
#	时间：2016年06月04日10:21:39								#
#	功能：第八章 正则表达式 练习题 5							#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

while (<>) {
	chomp;
	if ( /
			(?<word>\b\w*a\b)
			(?<behind5char>.{0,5})
		/xs ) {
		print "Matched: \t|\t$` <$&> $'\n";
		print "\$word contains '$+{word}' and behind five char is '$+{behind5char}'\n";
	} else {
		print "No match: \t|\t$_\n";
	}
}



#===========================================================
#	时间：2016年06月04日10:35:45							
#	结果：												
#		No match: 	|	match
#		No match: 	|	beforematchafter
#		No match: 	|	
#		> tched: 	|	 <wilma
#		'word contains 'wilma' and behind five char is '
#		Matched: 	|	I saw  <Wilma yest> erday
#		$word contains 'Wilma' and behind five char is ' yest'
#		No match: 	|	barney
#		No match: 	|	Mrs.WilmaFilintsone
#		Matched: 	|	 <wilma&fred> 
#		$word contains 'wilma' and behind five char is '&fred'
#		^_^……！												
#===========================================================	









