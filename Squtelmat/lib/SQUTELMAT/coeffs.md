## SYNOPSIS

`Squtelmat::coeffs`(n)

## DESCRIPTION

`Squtelmat::coeffs` finds the coefficients of the terms for 
a given squarified telescope matrix. The order of the coefficients
are arranged so that it matches with reverse alphabetical
order of Dyck words. For ease of computation, if the coefficients
are not calculated beforehand, they are written to a file in tmp/
directory. When the procedure is called, it first checks whether
such file exists. Calculation is performed if the file does 
not exist. The file name is the string "coeffs" concatenated with
the value of _n_.

## EXAMPLES

A simple working example is as follows.

    >> package("Squtelmat");
    >> Squtelmat::coeffs(3);

                                                                        +-   -+
                                                                        |  1  |
                                                                        |     |
                                                                        |  1  |
                                                                        |     |
                                                                        |  2  |
                                                                        |     |
                                                                        |  1  |
                                                                        |     |
                                                                        |  1  |
                                                                        +-   -+

## RETURN VALUES

a vector containing the coefficients of a squarified telescope matrix.

## SEE ALSO

`Squtelmat::sq` , `Squtelmat::SasValue` , `Squtelmat::SasString` , `Squtelmat::treesList` , `Squtelmat::tree2term`  
