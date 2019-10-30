function falsePosition(f,a,b)
  
  pkg load symbolic;
  syms x;
  
  fun=inline(f);
  
  d=1e-10;
  
  while b-a>=d
    m=(a*fun(b)-b*fun(a))/(fun(b)-fun(a));
    
    if fun(a)*fun(m)<0
      b=m;
    else
      a=m;
    endif
  endwhile
  m
    
  
  endfunction
