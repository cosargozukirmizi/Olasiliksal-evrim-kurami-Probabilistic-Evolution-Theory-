## SYNOPSIS

`Squtelmat::S`(i, a, F)

## DESCRIPTION

`Squtelmat::S` calculates the value of the squarified telescope matrix using
the nonlocal recursion between the squarified telescope matrices.
_i_ is the subindex of the squarified telescope matrix under consideration. _a_ is an
n-element vector and _F_ is a nxn^2 matrix. _F_ and _a_ undergo squarifications.
This procedure returns the squarified telescope matrix.

The procedure uses the _remember_ option for fast calculation.  
 
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
    >> Squtelmat::S(2,a,F);

                                                                    +-          -+
                                                                    |  176, 232  |
                                                                    |            |
                                                                    |  448, 536  |
                                                                    +-          -+




## RETURN VALUES

A square matrix that is the squarified telescope matrix.

## SEE ALSO

`Squtelmat::SasValue` 
