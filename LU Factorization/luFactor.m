function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix

[r,c] = size(A); %set r and c equal to the number of rows and columns of A

%Error Checking
%Make sure the input is an array, 3x3 or more for lu decomposition
if r < 2 
    error('Input must be a matrix')
end

%Is the matrix a square?
if r~=c
    error('Matrix is not a square, check input')
end


%Establish output variables
U = A; %will become upper triangular matrix
L = zeros(r,c); %placeholder for elimination factors
P = zeros(r,c); %placeholder for pivot 1's

%Create diagonal 1's in L and P
for n = 1:r
    L(n,n) = 1;
    P(n,n) = 1;
end

%Set up matrix for elimination by pivoting
%Run for possibility of pivoting all rows (number of rows -1)

for j = 1:r-1 
    
    %Find max of each column section to be able to pivot
    section = U([j:r],j); %Pull out part of matrix for max
    [m,indx] = max(abs(section));
    
    newrow = indx+j-1; %use index of the max to find the row address to pivot
    
    if m ~= U(j,j) %skips this section if there's no need to pivot
    
    %Pivot - swap entire rows
    %Find row to swap it with based on the dimensions of the matrix
    piv = U(newrow,:);
    U(newrow,:) = U(j,:);
    U(j,:) = piv;
    
    piv = P(newrow,:);
    P(newrow,:) = P(j,:);
    P(j,:) = piv;
    
    end
    
    %Elimination step
    
    for k = j+1:r
        
        %Evaluate the factor
        f = U(k,j)/U(j,j);
        
        %Store factor in L
        L(k,j) = f;
        
        %Multiply factor and subtract rows to eliminate
        U(k,:) = U(k,:)-U(j,:)*f;
        
    end

end