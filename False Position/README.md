# False Position
Calculates the root of a function using the false position bracketing root method.

`function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit)`

### Inputs:
- func: function
- xl: lower bound
- xu: upper bound
- es: stopping criteria, percentage (optional, will default to 0.0001%)
- maxit: maximum number of iterations (optional, will default to 200)

### Outputs:
- root: calculated root of the function within the specified bounds
- fx: the actual output value of the root evaluated in the function
- ea: approximate error
- iter: number of iterations completed for the calculation

## Limitations
While this algorithm works, there are some errors when manipulating the input variables that I still need to fix. The bounds xl and xu must bracket the root.
