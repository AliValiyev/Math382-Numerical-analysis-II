function quad = gl_single ( func, a, b, N )
%
%  function quad = gl_single ( func, a, b, N )
%
%  Return the value of the (simple) N-th order Gauss-Legendre approximation to 
%  the integral from A to B of F(X).  
%
[xvec, wvec] = gl_weight ( a, b, N );
fvec = feval ( func, xvec );
quad = sum( wvec .* fvec );




