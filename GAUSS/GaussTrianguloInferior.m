function x = GaussTrianguloInferior(A,B)
  [n n]= size(A);
  A=[A B];
  x = zeros(n,1);
  x(1)=A(1,n+1)/A(1,1);
  for i=2:n;
    s=0;
    for j=1:n-1;
      s=s+A(i,j)*x(j);
    endfor
    x(i)=(A(i,n+1)-s)/A(i,i);
  endfor
x