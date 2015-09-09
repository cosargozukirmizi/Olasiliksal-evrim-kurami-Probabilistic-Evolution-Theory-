## SYNOPSIS

`Squtelmat::tree2nestedCalls`(str)

## DESCRIPTION

`Squtelmat::tree2nestedCalls` receives a binary tree and 
returns a string that is the product
of nested squarification calls corresponding to that tree.  
 
## EXAMPLES

A simple working example is as follows.

    >> package("Squtelmat");
    >> alias(d = combinat::trees::dummyLabel):
    >> bt:=combinat::binaryTrees([d, [d, [d, [d, [], []], []],[d, [], []]], []]);

                                                                            o
                                                                           /
                                                                          /\
                                                                         /
    >> Squtelmat::tree2nestedCalls(bt);

                      "(Squtelmat::sq(F,Squtelmat::sq(F,Squtelmat::sq(F,Squtelmat::sq(F,a) * a) * a) * Squtelmat::sq(F,a) * a))"

## RETURN VALUES

A string of product of nested procedure calls.

## SEE ALSO

`Squtelmat::sq` , `Squtelmat::SasString` , `Squtelmat::treesList` , `Squtelmat::tree2term`   
