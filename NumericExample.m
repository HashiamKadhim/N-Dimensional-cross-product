%Numerical example of use of NDimCrossProd

Dimension=5; %choose any dimension >=3

RangeOfValues=10; %choose range of integers

RowVectorMatrix=randi([-RangeOfValues RangeOfValues],Dimension-1,Dimension)

[CrossProd,SumNotation]=NDimCrossProd(RowVectorMatrix)