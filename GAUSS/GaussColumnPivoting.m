function [A,b]=GaussColumnPivoting(A,b)
  n=length(b);
  for j = 1:n-1;
    %Elección fila con mayor pivote
    al = abs(A(j,j)); m=j;
    for k=j+1:n;
      if abs(A(k,j))> al
        al = abs(A(k,j)); m=k;
      endif
    endfor
    %intercambio de filas "j" y "m"
    for l=j:n
      be=A(j,l);
      A(j,l)=A(m,l);
      A(m,l)=be;
    endfor
    be=b(j); b(j)=b(m); b(m)=be;
    %Cancelación de los elementos de la triangular inferior
    for k = j+1:n;
      al=-A(k,j)/A(j,j);
      for m=j:n;
        A(k,m)=A(k,m)+al*A(j,m);
      endfor
      b(k)=b(k)+al*b(j);
    endfor
  endfor
