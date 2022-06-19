%İlgi Demirer 2426385, Ruşen Kartal 2468841, Hüseyin Eren Demirtaş 2358653, Ali Valiyev 2415461
%Date: 11-06-2022


function quad = midpointquad( func, a, b, N)
% quad = midpointquad( func, a, b, N)

% Here f indicates the name of a function, a and b are the lower and upper limits of integration, 
% and N is the number of points, not the number of intervals. 
% The code for your m-file might look like the following:

xpts = linspace(a,b,N);
h = (b-a)/(N-1) ; % length of subintervals
xmidpts = 0.5 * ( xpts(1:N-1) + xpts(2:N) );
fmidpts = func(xmidpts);
quad =  h * sum ( fmidpts );