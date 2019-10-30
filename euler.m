
f=@(x,y)(-x*y*y);

n=input('iteration ');
x0=input('x0 ');
y0=input('y0 ');

t=input('target value ');

h=(t-x0)/n;

for i=1:n
  x=x0+i*h;
  y=y0+h*f(x0,y0);
  
  x0=x;
  y0=y;
endfor

printf("value is %.5f\n",y);
