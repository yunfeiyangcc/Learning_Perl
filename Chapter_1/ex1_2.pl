#=======================================================#
#	时间：2016年5月7日 09:45:05							#
#	功能：Perl 学习入门 第一章 习题3					#
#	目的：Learning Perl									#
#		^_^……！											#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

@lines = `perldoc -u -f atan2`;

foreach (@lines) {
	s/\w<([^>]+)>/\U$1/g;			#处理@lines里面的内容
	print
}


#====================================================================================================================================================
#	时间：2016年5月7日 09:58:51
#	结果：													
#	处理前：																	处理后：												
#		F:\CC\Perl\Learning_Perl\Chapter_1>perl ex1_2.pl							F:\CC\Perl\Learning_Perl\Chapter_1>perl ex1_2.pl
#		=over 8																		=over 8
#																					
#		=item atan2 Y,X																=item atan2 Y,X
#		X<atan2> X<arctangent> X<tan> X<tangent>									ATAN2 ARCTANGENT TAN TANGENT
#																			    	
#		=for Pod::Functions arctangent of Y/X in the range -PI to PI				=for Pod::Functions arctangent of Y/X in the range -PI to PI
#																			    	
#		Returns the arctangent of Y/X in the range -PI to PI.						Returns the arctangent of Y/X in the range -PI to PI.
#																			    	
#		For the tangent operation, you may use the C<Math::Trig::tan>				For the tangent operation, you may use the MATH::TRIG::TAN
#		function, or use the familiar relation:										function, or use the familiar relation:
#																			    	
#		    sub tan { sin($_[0]) / cos($_[0])  }										sub tan { sin($_[0]) / cos($_[0])  }
#																			    	
#		The return value for C<atan2(0,0)> is implementation-defined; consult		The return value for ATAN2(0,0) is implementation-defined; consult
#		your atan2(3) manpage for more information.									your atan2(3) manpage for more information.
#																			    	
#		Portability issues: L<perlport/atan2>.										Portability issues: PERLPORT/ATAN2.
#																			    	
#		=back																		=back
#	^_^……！
#====================================================================================================================================================
