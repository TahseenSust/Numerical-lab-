function bisection(f,a,b);
  pkg load symbolic;
  sym x;
  fun=inline(f);
  d=1e-10;
  
  while b-a>=d
    m=(a+b)/2;
    if fun(a)*fun(m)<0
      b=m;
    else
      a=m;
     endif
   endwhile
   m
  
endfunction
