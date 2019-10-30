function newtonRaphson(fun,a,b);
  pkg load symbolic;
  syms x;
  f=inline(fun);
  z=diff(f(x));
  f0=function_handle(z);
  x0=a;
  
  for i=2:100
    x1=x0-(f(x0)/f0(x0));
    x0=x1;
  endfor
  x0
  
endfunction
