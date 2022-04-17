function tval=cheby_recurs(xval,degree)
% tval=cheby_recurs(xval,degree)


% İlgi , Ruşen, Orkhan, Hüseyin


%If the degree value is not given as input, then the function will take
%degree as 7.
if nargin==1
degree=7;
end


%Initial conditions of the recursive definition.
if degree ==0
    tval = 1;
end

if degree == 1
    tval = xval;
end


%Recursive definition for evaluating single value.
if degree > 1
    if numel(xval) == 1
        tval = 2*xval*cheby_recurs(xval, degree-1)' - cheby_recurs(xval, degree-2);
    end
end


%Recursive definition for evaluating multiple values.
%It is neccessary to define this function in that way to put a row vector
%as a input to the function, otherwise it will cause error.
if degree > 1
    if numel(xval) > 1
        tval = zeros(1,numel(xval));
        for i = 1:numel(xval)
            tval(i) = 2*xval(i)*cheby_recurs(xval(i), degree-1) - cheby_recurs(xval(i), degree-2);
        end
    end

end
