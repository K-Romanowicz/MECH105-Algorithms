
# Linear Regression

`function [m, y0, r2] = linregres(x, y, plotting)`

### Inputs: 
- x: array of independent variable
- y: array of corresponding dependent variable
- plotting: optional input to plot data (accepts 'Y'), leave blank to default to no 

### Outputs:
- m: slope of linear regression line
- y0: y intercept of linear regression line
- r2: r^2 value of linear regression, decimal between 0-1 (1 = 100%)

## Limitations:
The plotting input and section of the function is not as efficient as I'd like. It currently does not accept a version of 'no', and only accepts one version of 'yes'. 
