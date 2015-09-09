## SYNOPSIS

`BelowDiagonalTraversal::Next()`

## DESCRIPTION

Returns the next object of the class. 

## RETURN VALUES

a list with nondecreasing integer elements.  

## EXAMPLE

    >> package("BelowDiagonalTraversal"):
    >> a:=BelowDiagonalTraversal::first(3);

                                                                       [1, 2, 3]
    >> BelowDiagonalTraversal::Next(a);

                                                                       [1, 2, 2]

## SEE ALSO

`BelowDiagonalTraversal::first` , `BelowDiagonalTraversal::SpBubbleSortW1`  
