## SYNOPSIS

`BelowDiagonalTraversal::SpBubbleSortW1(L)`

## DESCRIPTION

Takes a list and sorts it by a bubblesort-like algorithm. The only 
difference with bubblesort is that the values are incremented when
swapping to right. The values stay the same when swapping to left. 

## RETURN VALUES

a list with nondecreasing integer elements.  

## EXAMPLE

    >> package("BelowDiagonalTraversal"):
    >> L:=[1,2,3,1,1];

                                                                    [1, 2, 3, 1, 1]
    >> BelowDiagonalTraversal::SpBubbleSortW1(L);

                                                                    [1, 1, 1, 4, 5]

## SEE ALSO

`BelowDiagonalTraversal::first` , `BelowDiagonalTraversal::Next`  
