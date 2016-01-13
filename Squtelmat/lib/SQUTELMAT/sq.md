## SYNOPSIS

`Squtelmat::sq`(F,a)

## DESCRIPTION

`Squtelmat::sq` evaluates a single squarification using nxn^2 matrix _F_ 
and an n-element vector _a_.  
 
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
    >> Squtelmat::sq(F,a);

                                                                     +-        -+
                                                                     |   4,  6  |
                                                                     |          |
                                                                     |  12, 14  |
                                                                     +-        -+

## RETURN VALUES

A square matrix.

## SEE ALSO

`Squtelmat::SasString` , `Squtelmat::treesList` , `Squtelmat::tree2term`  
