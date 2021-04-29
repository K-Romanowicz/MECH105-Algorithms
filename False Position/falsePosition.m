function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
%
%Inputs:
%   REQUIRED:
%   func: function you will be evaluating the root of
%   xl: lower bound, must bracket the root
%   xu: must bracket the root
%   OPTIONAL:
%   es: stopping criteria as a percent, will default to 0.0001%
%   maxit: maximum number of iterations in case ea does not satisfy es, will default to 200
%Outputs:
%   root: x value location of the root
%   fx: x value of the root evaluated in the function, returning the actual value
%   ea: approximate error of the root
%   iter: number of iterations completed

%error check - number of variables
if nargin < 3
    error('Not enough inputs, see help text')
elseif nargin > 6
    error('Too many inputs, see help text')
end

%set defaults for optional variables
if nargin == 3
    es = 0.0001; 
    maxit = 200;
elseif nargin == 4
    maxit = 200;
end

%check if bounds are valid
fxl = func(xl);
fxu = func(xu);
if fxl*fxu > 0
    error('Root not within bounds, check function or reset bounds')
end
    
%set output that counts the number of iterations
iter = 0;
%set first root to be the midpoint of the bounds
root = (xu-xl)/2;
%set first ea to 100%
ea = 100;

%calculate root
%while the number of iterations is below maxit or the approximate error is above the stopping criteria:
while ea > es || iter <= maxit 
    oldroot = root; %redefine the last iteration as the previous guess
    fxl = func(xl); %calculate the output at the bounds
    fxu = func(xu);
    root = xu-fxu*(xu-xl)/(fxu-fxl); %calculate the new root
    
    %count the iteration
    iter = iter + 1; 
    
    %calculate approximate error as a percent
    ea = abs((root - oldroot)/root)*100; 
    
    %check if the true root is 0
    if func(root) == 0
        break
    end
    
    if ea > es || iter <= maxit %if the error is not below the stopping criteria or the iteration is below maxit, redefine the bounds
        %check which bound to redefine
        if func(xu)*func(root) < 0 %if a sign change occurs between the root and xu
            xl = root;
            oldroot = root;
        elseif func(xl)*func(root) < 0 %if a sign change occurs between xl and the root
            xu = root;
            oldroot = root;
        end
    end
end

fx = func(root); %calculate the actual output of the root after it's good enough

end
