#!/usr/bin/perl -w

#We all live in a yellow
sub marine {
	chomp($lines = <STDIN>);
	# my $likes_perl = <STDIN> =~ / y(.)(.)\2\1 /ix # прямой поиск палиндромов по типу Abba
	#$lines =~ s/['$','\#','\@','\~','\!','\&','\*','\(','\)','\[','\]','\;','\.','\,','\:','\?','\^',' ', '\'','\','\/']//g;
	$lines =~ s/[\$#@~!&*()\[\];.,'’":?^ `\\\/]+//g; # удаление спец.символов
	$lines = lc($lines); # преобразование в нижний регистр
	$palindrom = reverse $lines;
	
	if ($palindrom eq $lines){
		print "This is palindrom!" . "\n";
	} else{
		print "This is not palindrom!" . "\n";
	}
}

marine();