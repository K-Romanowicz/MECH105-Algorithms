function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

% Error Check: inputs are equal length
[row, xsize] = size(x);
[row2, ysize] = size(y);

if xsize ~= ysize || row~=1 || row2~=1 % also makes sure it's row vectors
    error('Make sure arrays are vectors of equal lengths')
end

% Define variables
I = 0;
h = x(2)-x(1); % width between points, a-b
seg = xsize - 1; % number of segments is number of points -1
calc = seg/2; % number of calculations for rule (redefined if seg is odd)

% Error Check: x points are equally spaced
% create equally spaced vector to compare to x using spacing of two points & endpoints
if x(1):h:x(end) ~= x
    error('Make sure x values are equally spaced')
end

% Check: Intervals, warning for trap rule, redefine calc if needed

if rem(seg,2) ~= 0
    warning('Odd number of segments, trap rule will be used for last segment')
    %redefine calc as a whole number
    calc = (seg-1)/2;
    % Add last segment to I using trap rule
    I = h/2*(y(end-1)+y(end));
end

% Simpson's 1/3 Rule Calculation
for k = 1:calc
    I = I + h/3*(y(2*k-1)+4*y(2*k)+y(2*k+1));
end

end