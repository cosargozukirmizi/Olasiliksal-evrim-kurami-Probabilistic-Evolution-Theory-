## SYNOPSIS

`Squtelmat::treesList`(n)

## DESCRIPTION

`Squtelmat::treesList` creates a list of binary trees with 
_n_ number of nodes ordered corresponding to reverse 
lexicographical order of Dyck words.
 
## EXAMPLES

A simple working example is as follows.

    >> package("Squtelmat");
    >> Squtelmat::treesList(4);
    
                                      -- o   , o  , o  , o , o ,  o  ,  o ,  o ,  o,  o,   o ,   o,   o,    o --
                                      |   \     \    \    \   \  / \   / \  / \  /   /    / \   /    /     /   |
                                      |    \     \   /\   /   /     \    /  \    \   \   /     /\   /     /    |
                                      --    \    /        \  /                    \  /              \    /    --

## RETURN VALUES

A list of binary trees.

## SEE ALSO

`Squtelmat::sq` , `Squtelmat::SasValue` , `Squtelmat::SasString` , `Squtelmat::treesList` , `Squtelmat::tree2term`   
