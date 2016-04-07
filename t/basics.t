use Vector;
use Test;

plan 4*3;  # three tests per arithmetic operation (+ - * /)

my Vector $a .= new: :coordinates(my ($ax, $ay) = rand xx 2);
my Vector $b .= new: :coordinates(my ($bx, $by) = rand xx 2);

my $sum = $a + $b;
ok $sum ~~ Vector, "the sum is a Vector";
is-approx $sum[0], $ax + $bx, "(a+b)[0] = a[0] + b[0]";
is-approx $sum[1], $ay + $by, "(a+b)[1] = a[1] + b[1]";

my $diff = $a - $b;
ok $diff ~~ Vector, "the diff is a Vector";
is-approx $diff[0], $ax - $bx, "(a-b)[0] = a[0] - b[0]";
is-approx $diff[1], $ay - $by, "(a-b)[1] = a[1] - b[1]";

my $s = rand;
my $mult = $s*$a;
ok $mult ~~ Vector, "the scalar multiple is a Vector";
is-approx $mult[0], $s*$ax, "(s*a)[0] = s*a[0]";
is-approx $mult[1], $s*$ay, "(s*a)[1] = s*a[1]";

my $div = $a/$s;
ok $div ~~ Vector, "the scalar multiple is a Vector";
is-approx $div[0], $ax/$s, "(a/s)[0] = a[0]/s";
is-approx $div[1], $ay/$s, "(a/s)[1] = a[1]/s";




# vim: ft=perl6
