## SYNOPSIS

`Squtelmat::tree2term`(bt)

## DESCRIPTION

`Squtelmat::tree2term` receives a binary tree and 
returns a string that is the product
of nested squarifications corresponding to that tree.
The format of the string uses the squarification operator.
The purpose of this procedure is to represent the terms
of a squarified telescope matrix in a way that is 
plausible to the eye.  
 
## EXAMPLES

A simple working example is as follows.

    >> package("Squtelmat");
    >> alias(d = combinat::trees::dummyLabel):
    >> bt:=combinat::binaryTrees([d, [d, [d, [d, [], []], []],[d, [], []]], []]);

                                                                            o
                                                                           /
                                                                          /\
                                                                         /
    >> Squtelmat::tree2term(bt);

                                                    "|_F, |_F, |_F, |_F, a-| a-| a-| |_F, a-| a-| "

## RETURN VALUES

A string corresponding to a term of a squarified telescope matrix.

## SEE ALSO

`Squtelmat::SasString` , `Squtelmat::treesList` , `Squtelmat::tree2term`   
