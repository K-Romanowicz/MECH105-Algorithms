function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary

if base10 == 0 %Check if base10 is 0
    base2 = 0
elseif base10 == 1 %Check if base10 is 1
    base2 = 1
elseif base10 == 2
    base2 = [1 0]
else
%create array by finding the greatest power of 2 included in the base10 number
for k = 0:64
    if base10 <= 2^k && base10 >= 2^(k-1) %find greatest power of 2
        base2 = zeros(1,k); %create a base array to avoid extra zeros preceeding the first 0
        base2(1) = 1; %set the first term equal to 1
        base10 = base10 - 2^(k-1); %subtract the greatest power of 2 from base10 to find the new base10 number
    end
end

%define the length of base2 as a variable
l = length(base2);

%use the length of base2 to determine the other 1s and 0s of the base2 number
for j = l-1:-1:0 %inverse loop using the size of base2 to 0
    if base10 <= 2^j && base10 >= 2^(j-1) %find next greatest power of 2
        base2(l-(j-1)) = 1; %set the place in the array corresponding to this power equal to 1
        base10 = base10 - 2^(j-1); %subtract that power of 2 to find the new base 10 number
    end
end

end

end


