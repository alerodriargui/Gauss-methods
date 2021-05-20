A=[1, -1, 0; 2, 1, -1; 3, -1, -1];
b=[0;1;-3];
[An,bn]=GaussClasico(A,b)
x=susreg(A,b)
A\b-x