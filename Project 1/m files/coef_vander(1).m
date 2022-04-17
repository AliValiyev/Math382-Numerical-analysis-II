function c = coef_vander ( xdata, ydata )

% c = coef_vander ( xdata, ydata )

% xdata= It is just a row matrix that is corresponding to the x values of
% the given data points.

% ydata= It is also a row matrix just like "xdata" that is corresponding to the
% image points of the given x values from xdata.

% c= It is corresponding to the coefficent matrix of the polynomial that is
% passing through the given data points from "xdata" and "ydata" matrix.


N = numel(xdata);

% The following command lines creates the matrix A in order to solve the system. 
for j = 1:N
    for k = 1:N
        A(j,k) = xdata(j)^(N-k) ;
    end
end

% The following command line directly solves the system and found the
% coefficent matrix.
c = A \ ydata' ;

% your name and the date