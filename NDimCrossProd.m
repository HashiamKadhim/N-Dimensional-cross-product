function [CrossProd,SumNotation]=NDimCrossProd(RowVectorMatrix)
%
% NDimCrossProd finds the N-dimensional cross product (where N >= 3) of a list of N-1
% vectors
% 
% Note: Also works with symbolic variables
%
%
% Inputs: 
%    RowVectorMatrix: (N-1)xN matrix where each row is a vector
%
% outputs: 
%   CrossProd: 1xN vector that is the output of the N-dimensional cross product
%
%   SumNotation: The vector is given as 1 expression with coefficients e_i 
%

StandVecs=sym('e',[1,length(RowVectorMatrix)]);
FullMat=vertcat(RowVectorMatrix,StandVecs);
SumNotation=det(FullMat);
C=coeffs(SumNotation,StandVecs);
if length(C)==length(FullMat)
    CrossProd=fliplr(C);
elseif size(C,2)==0
    CrossProd=sym(zeros(1,length(FullMat)));
else
    CrossProd=sym(zeros(1,length(FullMat)));
    for i=1:length(FullMat)
        if length(coeffs(SumNotation,strcat('e',int2str(i))))==1
            CrossProd(i)=0;
        else
            Temp=coeffs(SumNotation,strcat('e',int2str(i)));
            CrossProd(i)=Temp(2);
        end
    end
end
        

end