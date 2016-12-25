$i = 4;
$d = 4.0;
$s = 'HackerRank ';

# Declare second integer, double, and String variables.
$j;
$e;
$t;

# Read and save an integer, double, and String to your variables.
$j = <STDIN>;
$e = <STDIN>;
$t = <STDIN>;

# Print the sum of both integer variables on a new line.
printf "%d\n", $i+$j;

# Print the sum of the double variables on a new line.
printf "%.1f\n", $d+$e;

# Concatenate and print the String variables on a new line
# The 's' variable above should be printed first.
print $s.$t;

