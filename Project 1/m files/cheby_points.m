function xdata = cheby_points ( a, b, ndata )
% xdata = cheby_points ( a, b, ndata )
% your name and the date

%Firstly, we should define our variables. "xdata" and "theta" should be a row matrix,
%at the begining we will just define them as a row matrix with all zero
%entries. Then we will modify each entry one by one.
xdata = zeros(1,ndata); 

theta = zeros(1,ndata);


%Calculating theta values for each n.
for i=1:ndata

    temp_term_1 = ((2*i-1)*pi)/(2*ndata);

    theta(i) = temp_term_1;

end

%Calculating the cheby. points for each value of cos(theta) in the theta list.
for i=1:ndata

    temp_term_2 = 0.5*(a+b+(a-b)*cos(theta(i)));

    xdata(i) = temp_term_2;

end

