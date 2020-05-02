#!/usr/local/bin/perl

print "Give me your end-number ";
$line = <STDIN>;
if ($line <= 0) { 
	print "You're crazy guy";
} 
else {
	$count = 0;
	while ($count < $line) {
		if ($count % 15 == 0) {
			print "FuzzBuzz\n";
		}
		elsif ($count % 5 == 0) {
			print "Fuzz\n";
		}
		elsif ($count % 3 == 0) {
			print "Buzz\n";
		}
		else{
			print "$count\n";
		}
	$count += 1;
	}
}