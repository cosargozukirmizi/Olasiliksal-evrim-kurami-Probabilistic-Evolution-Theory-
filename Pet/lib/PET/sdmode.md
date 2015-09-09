## SYNOPSIS

`Pet::sdmode`(F0, F1, F2, initial_vector, [order])

## DESCRIPTION

`Pet::sdmode` finds the approximate solution of the
ODE set with second degree multinomial right hand side
functions. F0, F1 and F2 are the coefficients related
to the right hand side functions. In the vector form
representation of the ODE set, F0, F1 and F2 are the
coefficients of the zeroth, first and second Kronecker
power of the system vector respectively. Initial vector
is a vector with the initial conditions at time _t_=0.
Order is the truncation order of the series created
by probabilistic evolution theory. The variable defaults
to value 3 if not specified. 

## EXAMPLES

A simple working example is as follows.

    >> package("Squtelmat"):
    >> package("Pet"):
    >> Mat := Dom::Matrix():
    >> F0:=Mat([[0],[1]]);

                                                                        +-   -+
                                                                        |  0  |
                                                                        |     |
                                                                        |  1  |
                                                                        +-   -+
    >> F1:=Mat([[1,1], [1,0]]);

                                                                      +-      -+
                                                                      |  1, 1  |
                                                                      |        |
                                                                      |  1, 0  |
                                                                      +-      -+
    >> F2:=Mat([[0,1/2,1/2,0], [0,0,0,-1]]);

                                                                 +-                 -+
                                                                 |  0, 1/2, 1/2,  0  |
                                                                 |                   |
                                                                 |  0,  0,   0,  -1  |
                                                                 +-                 -+
    >> initial_vector:=Mat([[.1],[.2]]);

                                                                       +-     -+
                                                                       |  0.1  |
                                                                       |       |
                                                                       |  0.2  |
                                                                       +-     -+
    >> Pet::sdmode(F0, F1, F2, initial_vector);

               +-                                                                                                                     -+
               |       /  t \ /         /  t \                /       /  t \      \2                /       /  t \      \3        \    |
               |    exp| -- | | 3.42 exp| -- | + 0.7321900826 | 11 exp| -- | - 11 |  + 0.2678642625 | 11 exp| -- | - 11 |  - 3.32 |    |
               |       \ 11 / \         \ 11 /                \       \ 11 /      /                 \       \ 11 /      /         /    |
               |                                                                                                                       |
               |       /  t \ /             /       /  t \      \2            /  t \                 /       /  t \      \3         \  |
               |  - exp| -- | | 0.194892562 | 11 exp| -- | - 11 |  - 11.46 exp| -- | + 0.08390177811 | 11 exp| -- | - 11 |  + 11.26 |  |
               |       \ 11 / \             \       \ 11 /      /             \ 11 /                 \       \ 11 /      /          /  |
               |                                                                                                                       |
               |                    /           /       /  t \      \2       /       /  t \      \3                         \          |
               |                    |       ksi | 11 exp| -- | - 11 |    ksi | 11 exp| -- | - 11 |                          |          |
               |             /  t \ |           \       \ 11 /      /        \       \ 11 /      /        /    /  t \     \ |          |
               |          exp| -- | | ksi + -------------------------- - -------------------------- - ksi | exp| -- | - 1 | |          |
               |             \ 11 / \                   121                         1331                  \    \ 11 /     / /          |
               +-                                                                                                                     -+


## ENVIRONMENT

Pet and Squtelmat packages should be included.

## RETURN VALUES

augmented solution vector. When the last element of
this vector is ignored, the remaining vector has the
_t_ dependent approximate solutions for the ODE in their
original order. The last element is created by constancy
adding space extension and is useful for debugging 
purposes only. 

## SEE ALSO

`Pet::hhc`
