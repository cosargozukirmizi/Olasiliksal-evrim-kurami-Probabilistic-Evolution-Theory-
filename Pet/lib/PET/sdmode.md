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

Example 1
---------

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



Example 2
---------

Another example for the same initial value problem is below. In the example
below, the number of significant digits is set to 40. The truncation order is
set to 9. Also, function values are printed for _t_ values between 0 and 1 with step 
size 0.1. The first column shows _t_ values, the following two columns show the 
function values for the sought functions.

    >> package("Squtelmat"):
    >> package("Pet"):
    >> DIGITS:=40:
    >> Mat := Dom::Matrix():
    >> F0:=Mat([[0],[1]]):
    >> F1:=Mat([[1,1], [1,0]]):
    >> F2:=Mat([[0,1/2,1/2,0], [0,0,0,-1]]):
    >> initial_vector:=Mat([[.1],[.2]]):
    >> res:=Pet::sdmode(F0, F1, F2, initial_vector, 9):
    >> for it_i from 0 to 1 step 0.1 do
    &>  print(NoNL,expr2text(it_i)."\t".expr2text(evalAt(res[1,1]
    &>   ,[t=it_i]))."\t".expr2text(
    &>   evalAt(res[2,1],[t=it_i]))."\n"):
    &> end_for:
    0       0.1     0.2
    0.1     0.1401850491498897424970354052674159734231      0.3053855831221614649789858277299491427162
    0.2     0.198761292635304498532760150410121950436       0.409296881038403486012435713191134004746
    0.3     0.2795232284009258289481426055644396289385      0.5117034215820082575453888229828547515548
    0.4     0.3875786286528403841778226908542076289936      0.613085982673798224765877145355440906267
    0.5     0.5298530438523471026098482175501921838686      0.7145032623872580558102914194098807144701
    0.6     0.7158254310379589719419178433487607047788      0.817664569933780719225257185979206489683
    0.7     0.9586115129872216715297888924657328124242      0.9250401024624610297838397918468475023071
    0.8     1.27656529082641348614389870770602863487        1.040053939698891866974127925600329857316
    0.9     1.695642413958745001077535424565799779469       1.167418733566637129857827864921711980167
    1.0     2.252867148168053042211485977911246248005       1.313684228346910933956049494764139920615

## ENVIRONMENT

Pet and Squtelmat packages should be included.  Domain Mat should be defined.

## RETURN VALUES

augmented solution vector. When the last element of
this vector is ignored, the remaining vector has the
_t_ dependent approximate solutions for the ODE in their
original order. The last element is created by constancy
adding space extension and is useful for debugging 
purposes only. 

## SEE ALSO

`Pet::hhc`
