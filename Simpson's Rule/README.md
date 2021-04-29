# Simpson's 1/3 Algorithm
Uses Simpson's 1/3 rule to calculate the integral of a function using tabular data.

`function [I] = Simpson(x, y)`

### Inputs:
- x: equally spaced array of the independent variable
- y: array with the dependent variable evaluated at x

### Outputs:
- I: calculated integral

## Limitations:
If there is an odd number of segments, the trapezoidal rule is used to calculate the final segment. (A warning will pop up if the trapezoidal rule is used.) It is not able to apply Simpson's 3/8 rule, which may have resulted in a more accurate estimate. 
