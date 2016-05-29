#=======================================================#
#	时间：2016年5月9日 21:05:13							#
#	功能：第三章 测试程序								#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

#!C:\Perl\bin

#use utf8;
#use warnings;

@rocks = ( "bedrock", "slate", "lava", "crushed rock", );
$rocks[9] = "schist";

print $#rocks;
print "\n";
print $rocks[$#rocks];		#$rocks[9]
print "\n";
print $rocks[-1];			#$rocks[9]
print "\n";
print $rocks[-9];			#$rocks[2]
print "\n";
print $rocks[-10];			#$rocks[1]
print "\n";
print $rocks[-11];			#undef
print "\n";

@num = ( 1.7..5.7 );		#1, 2, 3, 4, 5
print @num;					#输出12345
print "\n";
print "@num";				#输出1 2 3 4 5			#字符串中的数组内插，自动添加空格符
print "\n";

$count = @num;				#数组@num的个数
print $count;
print "\n";

@backwards = reverse qw { yabba dabba doo };
print "@backwards";
print "\n";
$backwards = reverse qw { yabba dabba doo };		#先将字符串连接，在逆序处理
print $backwards;
print "\n";

@backwards = reverse qw { dabba doo yabba };
print "@backwards";
print "\n";
$backwards = reverse qw { dabba doo yabba };		#先将字符串连接，在逆序处理
print $backwards;
print "\n";

@backwards = ();									#将数组清空
#@backwards = undef;								#仅有一个元素，且为undef
print "$backwards[1]";
print "\n";

@line = <STDIN>;									#结束符Ctrl + Z
foreach (@line) {
	print $_;
}

chomp (@line = <STDIN>);							#可以去除每行的换行
print "@line";


#===========================================================
#	时间：2016年5月10日 21:10:27							
#	结果：												
#		F:\CC\Perl\Learning_Perl\Chapter_3>ex3_test.pl
#		9
#		schist
#		schist
#		slate
#		bedrock
#		
#		12345
#		1 2 3 4 5
#		5
#		doo dabba yabba
#		oodabbadabbay
#		yabba doo dabba
#		abbayoodabbad
#		
#		123
#		456
#		789
#		^Z
#		123
#		456
#		789
#		123
#		456
#		789
#		^Z
#		123 456 789
#		^_^……！												
#===========================================================	
