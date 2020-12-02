#!/usr/bin/perl

my $num_correct = 0;

while (my $input_line = <STDIN>) {
	my ($first_pos, $second_pos, $char, $password) = $input_line =~ /\A(\d+)-(\d+) (.): (.*)\n\Z/;

	if (
		substr($password, $first_pos - 1, 1) eq $char xor
		substr($password, $second_pos - 1, 1) eq $char
	) {
		$num_correct++;
	}
}

print "$num_correct\n";
