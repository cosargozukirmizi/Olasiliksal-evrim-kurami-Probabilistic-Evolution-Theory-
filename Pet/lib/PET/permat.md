## SYNOPSIS

`Pet::permat`(n)

## DESCRIPTION

`Pet::permat` creates a (_n_+1)^2x(_n_+1)^2 permutation matrix. 
This permutation matrix is used within constancty adding 
space extension to relate the Kronecker square of a vector
to the Kronecker square of its two blocks. The first block
is a vector with _n_ elements and the second block has 
one element. The permutation matrix and its inverse 
are used to relate the vector formed by concatenation
of the Kronecker squares of the blocks of the vector and 
the Kronecker square of the vector.

## EXAMPLES

A simple example is as follows.

  >> package("Pet");
  >> package("Squtelmat");
  >> Mat := Dom::Matrix();

                                                                     Dom::Matrix()
  >> Pet::permat(2);

                                                            +-                           -+
                                                            |  1, 0, 0, 0, 0, 0, 0, 0, 0  |
                                                            |                             |
                                                            |  0, 1, 0, 0, 0, 0, 0, 0, 0  |
                                                            |                             |
                                                            |  0, 0, 0, 0, 1, 0, 0, 0, 0  |
                                                            |                             |
                                                            |  0, 0, 1, 0, 0, 0, 0, 0, 0  |
                                                            |                             |
                                                            |  0, 0, 0, 1, 0, 0, 0, 0, 0  |
                                                            |                             |
                                                            |  0, 0, 0, 0, 0, 1, 0, 0, 0  |
                                                            |                             |
                                                            |  0, 0, 0, 0, 0, 0, 1, 0, 0  |
                                                            |                             |
                                                            |  0, 0, 0, 0, 0, 0, 0, 1, 0  |
                                                            |                             |
                                                            |  0, 0, 0, 0, 0, 0, 0, 0, 1  |
                                                            +-                           -+



## RETURN VALUES

a permutation matrix. 

## SEE ALSO

`Pet::hhc` , `Pet::sdmode`  
