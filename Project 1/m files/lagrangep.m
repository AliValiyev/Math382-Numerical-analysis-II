function pval = lagrangep( k , xdata, xval )
% pval = lagrangep( k , xdata, xval )
% lagrangep function will evaluate the k-th Lagrange polynomial for the ...
% abscissæ xdata at the point xval.
% k= index of the k-th lagrange polynomial
% xdata= a row matrix that is corresponding to the x values of
% the given data points.
% xval= values that we want to evaluate the polynomial at.
% pval= corresponding values of the lagrange polynomial at xval.
% Ruşen Kartal 13.04.2022
N=numel(xdata);
pval = 1;
for j = 1 : N
 if j ~= k     
 pval = pval .* (xval-xdata(j))/(xdata(k)-xdata(j)); % elementwise multiplication
 end
end
