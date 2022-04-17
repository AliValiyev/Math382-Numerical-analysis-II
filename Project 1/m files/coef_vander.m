function c = coef_vander ( xdata, ydata)
% c = coef_vander ( xdata, ydata )
% xdata= inputted row matrix for x values for which our function will have y values
% ydata= the corresponding values our function takes at given x values
% c= the coefficients of our polynomial interpolation
% İlgi Demirer 30.03.22
N = length(xdata);
for j = 1:N
    for k = 1:N
        A(j,k) = xdata(j)^(N-k) ;
    end
end
c = A \ ydata';
