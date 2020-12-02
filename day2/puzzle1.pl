#!/usr/bin/perl

my $num_correct = 0;

while (my $input_line = <STDIN>) {
	my ($min, $max, $char, $password) = $input_line =~ /\A(\d+)-(\d+) (.): (.*)\n\Z/;
	my $count = () = $password =~ /$char/g;

	if ($count >= $min and $count <= $max) {
		$num_correct++;
	}
}

print "$num_correct\n";
