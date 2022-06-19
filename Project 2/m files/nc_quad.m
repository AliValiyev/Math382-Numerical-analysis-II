%İlgi Demirer 2426385, Ruşen Kartal 2468841, Hüseyin Eren Demirtaş 2358653, Ali Valiyev 2415461
%Date: 11-06-2022
function quad = nc_quad ( func, a, b, N, numSubintervals)
%
%  function quad = nc_quad ( func, a, b, N, numSubintervals )
%
%  Return the value of the compositie N-th order Newton-Cotes approximation 
%  that uses numSubintervals to approximate the integral from A to B of F(X).  
%
ends = linspace ( a, b, numSubintervals+1);
quad = 0.0;
for i = 1:numSubintervals
  quad = quad + nc_single ( func, ends(i), ends(i+1), N );
end




