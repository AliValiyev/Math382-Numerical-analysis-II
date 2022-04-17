function yval = eval_lag ( xdata, ydata, xval )
%This function takes a set of x and y values (called xdata and ydata
%respectively) and "constructs" a lagrange polynomial passing thorugh these
%points. It then evaluates this function at a given value or vector of 
%values of x (called xval)
%İlgi Demirer 09.04.22
yval = 0;
for k = 1 : length(xdata)
    m = (ydata(k) * lagrangep(k, xdata, xval));
    yval = yval + m;
end