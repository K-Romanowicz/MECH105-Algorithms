# MECH105-Algorithms
These are the algorithms I created for MECH105 utilizing numerical methods.

Summary:
- Binary Converter
- False Position
- LU Factorization
- Simpson's 1/3 Algorithm

---

### Binary Converter
Takes a number in base 10 and converts it to base 2.

`function [base 2] = binaryConverter(base10)`

Inputs:
- base 10: number in base 10

Outputs:
- base 2: base 10 number converted to base 2

---

### False Position
Calculates the root of a function using the false position bracketing root method.

`function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit)`

Inputs:
- func: function
- xl: lower bound
- xu: upper bound
- es: stopping criteria, percentage (optional, will default to 0.0001%)
- maxit: maximum number of iterations (optional, will default to 200)

Outputs:
- root: calculated root of the function within the specified bounds
- fx: the actual output value of the root evaluated in the function
- ea: approximate error
- iter: number of iterations completed for the calculation

### LU Factorization
Performs LU Decomposition with pivoting.
`function [L, U, P] = luFactor(A)`



### Simpson's 1/3 Algorithm
Uses Simpson's 1/3 rule to calculate the integral of a function using tabular data.
`function [I] = Simpson(x, y)`
