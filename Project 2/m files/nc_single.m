%İlgi Demirer 2426385, Ruşen Kartal 2468841, Hüseyin Eren Demirtaş 2358653, Ali Valiyev 2415461
%Date: 15-06-2022

function quad = nc_single ( func, a, b, N )
%
%  quad = nc_single ( func, a, b, N )
%
%  Return the value of the (simple) N-th order Newton-Cotes approximation to the
%  integral from A to B of F(X).  

xvec = linspace ( a, b, N );
wvec = nc_weight ( N );

% fvec = feval ( func, xvec );

fvec = zeros(1,N);

result = zeros(1,N);

for i = 1:N
fvec(i) = func(xvec(i));
result(i) = fvec(i)*wvec(i);
end

quad = (b-a) * sum(result);




