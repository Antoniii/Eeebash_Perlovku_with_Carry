#!/usr/bin/perl
use strict;

open FID_0, ">input.txt"
  or die "Oops!...I didn't it again!\n";

my $n = 42; # локализация глобальной переменной $n

foreach (1..$n){
	print FID_0 $_, "\n"; 
}

close FID_0;


# создаем файловый дескриптор на чтение
open FID, "input.txt"
  or die "Failed to open input.txt: $!\n";

sub factorial {
	my $n = $_[0];
	if ($n == 0 || $n == 1) {
		return 1;
	} else {
		return $n * factorial($n-1);
	}
}

while (defined($a = <FID>)) {
	chomp($a);
	#print "Factorial of a number $a is ", factorial($a), "\n"; # стандартный вывод в консоль
	
	# создаём и выводим в файл
	open FID1, ">>output_with_result.txt" # один знак "больше" заново создаёт каждый раз файл,
								# 2 знака -- запись в конец, но только в уже существующий файл
  		or die "Failed to open output1.txt: $!\n";
	print FID1 "Factorial of a number $a is ", factorial($a), "\n";
	#close FID;
}

close FID1;
close FID; # закрываем файловый дескриптор

# $a = 171;  # maximum recursion depth = 170
 
# print "Factorial of a number $a is ", factorial($a), "\n"; 

# Factorial of a number 170 is 7.25741561530799e+306
# Factorial of a number 171 is Inf

