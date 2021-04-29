# LU Factorization
Performs LU Decomposition with pivoting.

`function [L, U, P] = luFactor(A)`

### Inputs:
- A: array for the decomposition

### Outputs:
- L: lower triangular matrix
- U: upper triangular matrix
- P: matrix that tracks pivoting

## Limitations
There are still some bugs with the pivoting that I need to fix. Also, there is an lu function in MATLAB that is more efficient than my algorithm.
