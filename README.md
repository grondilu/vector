# Vector
[![Build Status](https://travis-ci.org/grondilu/vector.svg)](https://travis-ci.org/grondilu/vector)

## Synopsis

    use Vector;
    
    my Vector $a .= new: :coordinates(rand xx 3);
    my Vector $b .= new: :coordinates(rand xx 3);

    dd $a + $b;    # addition
    dd $a - $b;    # substraction
    dd pi*$a;      # scalar multiplication
    dd $a/pi;      # scalar division

## Description
This is a simple implementation of vectors in Perl 6.

Currently this class explicitely restricts itself to `Real` scalar components.
It may later be defined instead as a parametric role so that complex scalars
could be used.

## Access to coordinates

The class has a public attribute `@coordinates` which handles `AT-POS`:

    my Vector $a .= new: :coordinates(1, -1);
    say $a.coordinates[1];   # -1
    say $a[1];               # same thing

## Arithmetics

The class exports the four arithmetic operations `+`, `-`, `*`, `/`.
Multiplication and division are only for the scalar multiplication.

No scalar product, cross product or anything like that.

## See Also
A similar module is `Math::Vector`, but I wanted to make my own because:

* I don't like the prefix `Math::`
* I wanted a minimalistic implementation that I can easily expend with other
  modules (mainly my Clifford algebra module).

