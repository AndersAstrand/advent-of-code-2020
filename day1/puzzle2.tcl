#!/usr/bin/tclsh

set num_numbers 0 
while {[gets stdin line] != -1} {
	set numbers($num_numbers) $line
	incr num_numbers
}

for {set i 0} {$i < ($num_numbers - 2)} {incr i} {
	for {set j [expr "$i + 1"]} {$j < ($num_numbers - 1)} {incr j} {
		for {set k [expr "$j + 1"]} {$k < $num_numbers} {incr k} {
			if {($numbers($i) + $numbers($j) + $numbers($k)) == 2020} {
				puts [expr "$numbers($i) * $numbers($j) * $numbers($k)"]
			}
		}
	}
}
