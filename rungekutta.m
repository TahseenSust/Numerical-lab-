

f=@(x,y) (((y*y)-(x*x))/(((y*y)+(x*x))));
n=input('iteration ');
x0=input('x0 ');
y0=input('y0 ');
t=input('target value ');
h=(t-x0)/n;

for i=1:10
  x=x0+h;
  k1=h*f(x0,y0);
  k2=h*f(x0+(h/2),y0+(k1/2));
  k3=h*f(x0+(h/2),y0+(k2/2));
  k4=h*f(x0+(h/1),y0+(k3/1));
  
  y=y0+(1/6)*(k1+2*k2+2*k3+k4);
  
  x0=x;
  y0=y;
endfor

printf('The approximate value of y(%.2f) is %.5f\n',t,y);
