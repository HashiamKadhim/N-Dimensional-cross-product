%Symbolic example of use of NDimCrossProd

Dimension=4; %choose any dimension >=3

RowVectorMatrix=sym('a',[Dimension-1,Dimension])

[CrossProd,SumNotation]=NDimCrossProd(RowVectorMatrix);

CrossProd.'
SumNotation