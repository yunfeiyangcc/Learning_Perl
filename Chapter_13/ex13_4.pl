#=======================================================#
#	时间：2016年06月16日20:32:22								#
#	功能：第十三章 目录操作 练习题 4							#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;

foreach my $dir_name (@ARGV) {
	print "@ARGV\n";
	rm ($dir_name);
}

sub rm {
	foreach (@_) {
		opendir cur_dir,$_ or die "Can't open $_: $!";
		print "Open the dir $_ successfully.\n";

		while (my $name_in_cur_dir = readdir cur_dir) {
			my $path_name_in_cur_dir = "$_/$name_in_cur_dir";
			print "$path_name_in_cur_dir\n";
			if (-d $path_name_in_cur_dir) {
				next if ($name_in_cur_dir eq "." || $name_in_cur_dir eq "..");
				print "&rm($path_name_in_cur_dir)\n";
				&rm($path_name_in_cur_dir);
				rmdir $path_name_in_cur_dir;
				print "Delete the dir $path_name_in_cur_dir successfully.\n";
			} 
		}
	}
}


#===========================================================
#	时间：2016年06月15日20:52:04							
#	结果：												
#		^_^……！												
#===========================================================	
