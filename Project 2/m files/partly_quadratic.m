%İlgi Demirer 2426385, Ruşen Kartal 2468841, Hüseyin Eren Demirtaş 2358653, Ali Valiyev 2415461
%Date: 11-06-2022
function y=partly_quadratic(x)
% y=partly_quadratic(x)
% input x (possibly a vector or matrix)
% output y, where
% for x<=0, y=0
% for x>0,  y=x(1-x)

y=(heaviside(x)-heaviside(x-1)).*x.*(1-x);