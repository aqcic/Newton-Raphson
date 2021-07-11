function [res, it] = fnewton(func,dfunc,x,tol)
it = 0;
x0=x;
d = feval(func,x0)/feval(dfunc,x0);
while abs(d) > tol
    x1= x0-d;
    it = it + 1;
    x0 = x1;
    d = feval(func,x0)/feval(dfunc,x0);
end
res = x0;
fprintf('tolerance %4.10f',d)
disp(it)
