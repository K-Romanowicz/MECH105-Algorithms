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
To perform LU Decomposition, the input matrix must be a square. There is also an lu function in MATLAB that is more efficient than my algorithm. 
