% construct N=5 data points
N=5;
xdata=linspace(-pi,pi,N);
ydata=sinh(xdata);

% construct many test points
xval=linspace(-pi,pi,4001);
% construct the true test point values, for reference
yvalTrue=sinh(xval);

% use Lagrange polynomial interpolation to evaluate 
% the interpolant at the test points
yval=eval_lag(xdata,ydata,xval);

% plot reference values in thick green
plot(xval,yvalTrue,'g','linewidth',4);
hold on
% plot interpolation data points
plot(xdata,ydata,'k+');
% plot interpolant in thin black
plot(xval,yval,'k');
hold off

% estimate the approximation error of the interpolant
approximationError=max(abs(yvalTrue-yval))/max(abs(yvalTrue))