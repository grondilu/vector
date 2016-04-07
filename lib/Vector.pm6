unit class Vector;

has Real @.coordinates handles <AT-POS>;

method dimension { @!coordinates.elems }
method clean { @!coordinates.pop until @!coordinates[*-1].abs > $*TOLERANCE }

multi infix:<+>(Vector $a, Vector $b) returns Vector is export {
    return Vector.new: :coordinates(
	($a[$_]//0) + ($b[$_]//0) for ^($a, $b)».dimension.max;
    );
}
multi infix:<->(Vector $a, Vector $b) returns Vector is export {
    return Vector.new: :coordinates(
	($a[$_]//0) - ($b[$_]//0) for ^($a, $b)».dimension.max;
    );
}
multi infix:<*>(Real $s, Vector $a) returns Vector is export {
    return Vector.new: :coordinates($s*$_ for $a.coordinates);
}
multi infix:</>(Vector $a, Real $s) returns Vector is export {
    return Vector.new: :coordinates($_/$s for $a.coordinates);
}
