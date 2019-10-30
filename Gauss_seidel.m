%finding the equation using Gauss_seidel method
%10x+3y-5z=5
%3x-10y+6z=9
%5x-2y+10z=3

f1=@(y,z) (1/10)*(5-3*y+5*z);
f2=@(x,z) (1/10)*(-9+3*x+6*z);
f3=@(x,y) (1/10)*(3-5*x+2*y);

x=0;
y=0;
z=0;

for i=1:10
  
  x=f1(y,z);
  y=f2(x,z);
  z=f3(x,y);
  
endfor

printf('x=%.5f y=%.5f z=%.5f\n',x,y,z);
