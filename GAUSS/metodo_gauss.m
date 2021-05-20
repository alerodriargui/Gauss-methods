
##A=[0,4,-2,-2;1,2,4,-3;-3,-3,8,-2;-1,1,6,-3];
##b=[-4;5;7;7];
#########################################################
##-----ESTA CLASE CONTIENE VARIOS METODOS DE GAUSS-----##
#########################################################

#FUNCION PARA HALLAR LA MATRIZ TRIANGULO SUPERIOR(MOSTRANDO LOS CAMBIOS DE FILAS)
function Ab=GaussSuperior(A,b);
Ab=[A b];
n=length(b);
for k=1:n-1 
    [mayor,j]=max(abs(Ab(k:n,k)));
    fila=j+k-1;
    if fila~=k
        fprintf('intercambio fila %i por fila %i\n',k,fila);
        Ab([k,fila],:)=Ab([fila,k],:);%intercambio de filas
        Ab %muestra la matriz
    end
    %convierte en matriz triangular
    for i=k+1:n
        factor=Ab(i,k)/Ab(k,k);
        Ab(i,k:n+1)=Ab(i,k:n+1)-factor*Ab(k,k:n+1);          
    end
    Ab %muestra la matriz
end

#FUNCION PARA HALLAR LA MATRIZ TRIANGULO SUPERIOR(SIN MOSTRAR LOS CAMBIOS DE FILAS)
function x=gauss_ecuacion(A,b)
    Ab=[A b];
    n=length(b);
%matriz triangular
  for k=1:n-1 
        [mayor,j]=max(abs(Ab(k:n,k)));
        fila=j+k-1;
        if fila~=k
            Ab([k,fila],:)=Ab([fila,k],:);%intercambio de filas
        endif
        for i=k+1:n
            factor=Ab(i,k)/Ab(k,k);
            Ab(i,k:n+1)=Ab(i,k:n+1)-factor*Ab(k,k:n+1);          
        endfor
  endfor
%incógnitas
    x=zeros(n,1);
    x(n)=Ab(n,n+1)/Ab(n,n);
    for i=n-1:-1:1 
        x(i)=Ab(i,n+1)/Ab(i,i)-Ab(i,i+1:n)*x(i+1:n)/Ab(i,i); 
    endfor
endfunction

#FUNCION DEL METODO DE GAUSS CLASICO
function [A,b]=Gauss(A,b)
  
  n=length(b);
  for j = 1:n-1;
    for k = j+1:n;
      a1=-A(k,j)/A(j,j);
      for m = j:n;
        A(k,m)=A(k,m)+a1*A(j,m);
      endfor
      b(k)= b(k)+a1*b(j);
    endfor
  endfor
endfunction

#FUNCION DEL METODO DE GAUSS POR PIVOTAJE POR COLUMNAS
function [A,b] = Gauss_pivotaje(A,b)
  n = length(b);
  for J = 1:n-1;
    %Eleccion fila con mayor pivote
    al = abs(A(j,j)); m=j;
    for K=j+1:n;
      if abs(A(k,j)) > al
        al = abs(A(k,j));m=k;
      endif
    endfor
    %Intercambio de filas "j" y "m"
    for l = j:n
      be=A(j,l);
      A(j,l)=A(m,l);
      A(m,l) = be;
    endfor
    be = b(j); b(j)=b(m); b(m) = be;
    %Cancelacion de los elementos de la tiangular inferior
    for k = j+1:n;
       al = -A(k,j)/A(j,j);
       for m = j: n;
         A(k,m)=A(k,m)+al*A(j,m);
       endfor
       b(k)=b(k)+al*b(j);
    endfor
  endfor
endfunction