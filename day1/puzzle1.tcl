#!/usr/bin/tclsh

set num_numbers 0 
while {[gets stdin line] != -1} {
	set numbers($num_numbers) $line
	incr num_numbers
}

for {set i 0} {$i < ($num_numbers - 1)} {incr i} {
	for {set j [expr "$i + 1"]} {$j < $num_numbers} {incr j} {
		if {($numbers($i) + $numbers($j)) == 2020} {
			puts [expr "$numbers($i) * $numbers($j)"]
		}
	}
}
