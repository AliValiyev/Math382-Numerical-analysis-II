function quad = midpointquad ( func, a, b, n )

% quad = midpointquad ( f, a, b, N )
% comments
% your name and the date
% Return the value of a composite midpoint rule using N points 
% (and N-1 intervals) to approximate the integral from A to B of F(X).  

  xpts = linspace ( a, b, n );
  h = ( b - a ) / ( n - 1 );
  xmidpts = 0.5 * ( xpts(1:n-1) + xpts(2:n) );
  fmidpts = feval ( func, x );

  quad = h * sum ( fmidpts );




