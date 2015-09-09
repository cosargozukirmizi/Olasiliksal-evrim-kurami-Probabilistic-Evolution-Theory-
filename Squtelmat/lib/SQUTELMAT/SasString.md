## SYNOPSIS

`Squtelmat::SasString`(n)

## DESCRIPTION

`Squtelmat::SasString` finds the squarified telescope matrix
as a character string of product of nested procedure calls. 

## EXAMPLES

A simple working example is as follows.

    >> package("Squtelmat");
    >> Squtelmat::SasString(3);

    "(Squtelmat::sq(F,a) * Squtelmat::sq(F,a) * Squtelmat::sq(F,a))+(Squtelmat::sq(F,a) * Squtelmat::sq(F,Squtelmat::sq(F,a) * a))+2*(Squtelmat::sq(F,Squt\
elmat::sq(F,a) * a) * Squtelmat::sq(F,a))+(Squtelmat::sq(F,Squtelmat::sq(F,a) * Squtelmat::sq(F,a) * a))+(Squtelmat::sq(F,Squtelmat::sq(F,Squtelmat::s\
q(F,a) * a) * a))"

## RETURN VALUES

a character string of product of nested procedure calls.

## SEE ALSO

`Squtelmat::sq` , `Squtelmat::SasValue` , `Squtelmat::treesList` , `Squtelmat::tree2term`  
