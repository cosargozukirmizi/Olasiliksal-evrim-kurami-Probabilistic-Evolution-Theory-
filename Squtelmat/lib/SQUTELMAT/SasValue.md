## SYNOPSIS

`Squtelmat::SasValue`(i, a, F)

## DESCRIPTION

`Squtelmat::SasValue` evaluates the character string returned by `Squtelmat::SasValue`.
_i_ is the subindex of the squarified telescope matrix under consideration. _a_ is an
_n_-element vector and _F_ is a _n_x_n_^2 matrix. _F_ and _a_ undergo squarifications.
This procedure returns the squarified telescope matrix.  
 
## EXAMPLES

A simple working example is as follows.

    >> package("Squtelmat");
    >> a:=matrix([[1],[1]]);

                                                                        +-   -+
                                                                        |  1  |
                                                                        |     |
                                                                        |  1  |
                                                                        +-   -+
    >> F:=matrix([[1,2,3,4],[5,6,7,8]]);

                                                                   +-            -+
                                                                   |  1, 2, 3, 4  |
                                                                   |              |
                                                                   |  5, 6, 7, 8  |
                                                                   +-            -+
    >> Squtelmat::SasValue(2,a,F);

                                                                    +-          -+
                                                                    |  176, 232  |
                                                                    |            |
                                                                    |  448, 536  |
                                                                    +-          -+




## RETURN VALUES

A square matrix that is the squarified telescope matrix.

## SEE ALSO

`Squtelmat::tree2term` , `Squtelmat::SasString` , `Squtelmat::treesList` , `Squtelmat::tree2term`  
