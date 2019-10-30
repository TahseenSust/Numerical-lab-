function value=bisection(f,a,b);
  pkg load symbolic;
  syms x;
  func=inline(f);
d = 1e-10;
while b-a >= d
    m = (a + b)/2;
    printf("%d %d %d %d %d %d\n",a,b,func(a),func(b),m,func(m));
    
    if func(m)*func(a) < 0
        b = m;
    else
        a = m;
  endif
  
endwhile
value=m;
endfunction
