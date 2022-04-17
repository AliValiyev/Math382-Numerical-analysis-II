function pval = lagrangep( k , xdata, xgiven )
 % this function takes a vector of x values (xdata) and evaluates the kth
 % Lagrange polynomial for these xdata at a fixed value of x (xgiven)
% İlgi Demirer 09.04.22
pval = 1;
n = length(xdata);
for j = 1 : n
    if j ~= k
        m = ( xgiven - xdata(j)) / (xdata(k) - xdata(j));
        pval = pval .* m; % elementwise multiplication
    end
end

