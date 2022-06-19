%İlgi Demirer 2426385, Ruşen Kartal 2468841, Hüseyin Eren Demirtaş 2358653, Ali Valiyev 2415461
%Date: 11-06-2022

function quad = trapezoidquad ( func, a, b, N )

%  quad = trapezoidquad ( func, a, b, N )
%
%  Return the value of the composite trapezoidal approximation to the
%  integral from A to B of F(X), using N points of evaluation,
%  (and hence, N-1 intervals).  

h = ( b - a ) / ( N - 1 );
x = linspace ( a, b, N );
fvec = zeros(1,N);

for i = 1:N
fvec(i) = func(x(i));
end

quad = h * ( sum ( fvec) - 0.5 * ( func(a) + func(b) ) );




