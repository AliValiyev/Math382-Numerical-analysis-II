function tval=cheby_trig(xval,degree)
% tval=cheby_trig(xval,degree)

% your name and the date

%If the degree value is not given as input, then the function will take
%degree as 7.
if nargin==1
degree=7;
end

%Definition of the function, here acos() represents inverse of cosine function.
tval = cos(degree*acos(xval));

