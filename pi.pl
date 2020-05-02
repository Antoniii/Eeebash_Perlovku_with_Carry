#!/usr/local/bin/perl
($sec, $min) = localtime();
 
$time_1 = $sec;
$Time_1 = $min;

#sleep 2.51;
$n = 100_000_000;

# @chisl = ();
# foreach $i (0..$n-1) {
# 	push @chisl, ((-1)**$i);
# 	}

# @znam = ();
# $i = 0;
# while ($i < $n) {
# 	push @znam, (2*$i+1);
# 	$i += 1; 
# 	}

# foreach $i (0..$n-1) {
# 	#print(@znam[$i],"\n"); 
# 	$sum += @chisl[$i]/@znam[$i];
# 	#print($sum,"\n");
# }

# $sum = 4*$sum;
# print($sum,"\n");

$s = 0;
foreach $i (0..$n-1) {
	$s += ((-1)**$i)/(2*$i+1);
	}

print(4*$s, "\n");


($sec, $min) = localtime();

printf("Time of count: %12.3f s\n", $sec - $time_1);
printf("Time of count: %1.2f min\n", $min - $Time_1);

# Perl 5
# n = 1_000_000
# 3.14159165358977
# Time of count: 1.0 s

# n = 10_000_000
# 3.14159255358979
# Time of count: 6.0 s

# n = 100_000_000
# 3.14159264358933
# Time of count: -6.0 s
# Time of count: 1.0 min
