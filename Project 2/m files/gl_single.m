%İlgi Demirer 2426385, Ruşen Kartal 2468841, Hüseyin Eren Demirtaş 2358653, Ali Valiyev 2415461
%Date: 11-06-2022
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




