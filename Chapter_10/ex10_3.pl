#=======================================================#
#	时间：2016年06月09日18:15:26								#
#	功能：第十章 其他控制结构 练习题 3							#
#	目的：Learning Perl											#
#		^_^……！												#
#=======================================================#

## Copyright (C) 2016 by CC
#!C:\Perl\bin

#use utf8;
use warnings;
use strict;
# use 5.010;

$ENV {ZERO}		= 0;
$ENV {EMPTY}		= '';
$ENV {UNDEFINED}	= undef;

my $max_length = 0;
my $key;
foreach $key(sort keys %ENV) {
	if ( $max_length < length($key) ) {
		$max_length = length($key);
	}
}

foreach $key(sort keys %ENV) {
	printf("%${max_length}s => %s\n", $key, $ENV{$key} // "undefined value" );
}

#===========================================================
#	时间：2016年06月09日18:27:58
#	结果：												
#		cc@cc-linux:/media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_10$ perl ex10_3.pl 
# 		CLUTTER_IM_MODULE 				=> xim
# 		COMPIZ_CONFIG_PROFILE 			=> ubuntu
# 		DBUS_SESSION_BUS_ADDRESS 		=> unix:abstract=/tmp/dbus-WDKly8J6T8
# 		DEFAULTS_PATH 					=> /usr/share/gconf/ubuntu.default.path
# 		DESKTOP_SESSION 					=> ubuntu
# 		DISPLAY 							=> :0
# 		EMPTY 								=> 
# 		GDMSESSION 						=> ubuntu
# 		GDM_LANG 							=> zh_CN
# 		GNOME_DESKTOP_SESSION_ID 		=> this-is-deprecated
# 		GNOME_KEYRING_CONTROL 			=> 
# 		GNOME_KEYRING_PID 				=> 
# 		GTK2_MODULES 					=> overlay-scrollbar
# 		GTK_IM_MODULE 					=> fcitx
# 		GTK_MODULES 						=> unity-gtk-module
# 		HOME 								=> /home/cc
# 		IM_CONFIG_PHASE 					=> 1
# 		INSTANCE 							=> 
# 		JOB 								=> dbus
# 		LANG 								=> zh_CN.UTF-8
# 		LANGUAGE 							=> zh_CN:zh
# 		LESSCLOSE 							=> /usr/bin/lesspipe %s %s
# 		LESSOPEN 							=> | /usr/bin/lesspipe %s
# 		LIBGL_DRIVERS_PATH 				=> /usr/lib/fglrx/dri:/usr/lib/i386-linux-gnu/dri:/usr/lib/dri
# 		LOGNAME 							=> cc
# 		LS_COLORS 							=> rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:
# 		MANDATORY_PATH 					=> /usr/share/gconf/ubuntu.mandatory.path
# 		PATH 								=> /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
# 		PWD 								=> /media/cc/00085D0D0001BB1E/CC/Perl/Learning_Perl/Chapter_10
# 		QT4_IM_MODULE 					=> fcitx
# 		QT_IM_MODULE 					=> fcitx
# 		QT_QPA_PLATFORMTHEME 			=> appmenu-qt5
# 		SESSION 							=> ubuntu
# 		SESSIONTYPE 						=> gnome-session
# 		SESSION_MANAGER 					=> local/cc-linux:@/tmp/.ICE-unix/1302,unix/cc-linux:/tmp/.ICE-unix/1302
# 		SHELL 								=> /bin/bash
# 		SHLVL 								=> 1
# 		SSH_AUTH_SOCK 					=> /run/user/1000/keyring/ssh
# 		TERM 								=> xterm-256color
# 		UNDEFINED 						=> undefined value
# 		UPSTART_SESSION 					=> unix:abstract=/com/ubuntu/upstart-session/1000/1138
# 		USER 								=> cc
# 		VTE_VERSION 						=> 4002
# 		WINDOWID 							=> 69206026
# 		XAUTHORITY 						=> /home/cc/.Xauthority
# 		XDG_CONFIG_DIRS 					=> /etc/xdg/xdg-ubuntu:/usr/share/upstart/xdg:/etc/xdg
# 		XDG_CURRENT_DESKTOP 			=> Unity
# 		XDG_DATA_DIRS 					=> /usr/share/ubuntu:/usr/share/gnome:/usr/local/share/:/usr/share/
# 		XDG_GREETER_DATA_DIR 			=> /var/lib/lightdm-data/cc
# 		XDG_MENU_PREFIX 					=> gnome-
# 		XDG_RUNTIME_DIR 					=> /run/user/1000
# 		XDG_SEAT 							=> seat0
# 		XDG_SEAT_PATH 					=> /org/freedesktop/DisplayManager/Seat0
# 		XDG_SESSION_DESKTOP 				=> ubuntu
# 		XDG_SESSION_ID 					=> c2
# 		XDG_SESSION_PATH 				=> /org/freedesktop/DisplayManager/Session0
# 		XDG_SESSION_TYPE 					=> x11
# 		XDG_VTNR 							=> 7
# 		XMODIFIERS 						=> @im=fcitx
# 		ZERO 								=> 0
# 		_ 									=> /usr/bin/perl
#		^_^……！												
#===========================================================	
