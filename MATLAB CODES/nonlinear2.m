syms x r c1 c2
p1 = input('Enter the coefficient of D2y: ');
p2 = input('Enter the coefficient of Dy: ');
p3 = input('Enter the coefficient of y: ');
eq=p1*r^2+p2*r+p3; 
r=solve(eq, r);
p=real(r(1));
q=imag(r(1));
if q~=0
y1=exp(p*x)*cos(q*x);
y2=exp(p*x)*sin(abs(q)*x);
elseif r(1)==r(2)
y1=exp(r(1)*x);
y2=x*exp(r(1)*x);
else
y1=exp(r(1)*x);
y2=exp(r(2)*x);
end
y_h=c1*y1+c2*y2;
W=simplify(y1*diff(y2)-y2*diff(y1)); %%% W is the Wronskian
f = input('Enter the non-homogeneous part: ');%%% Solving of Non-Homogeneous part
g=f/p1;
y_p=-y1*int(y2*g/W)+y2*int(y1*g/W);
y1=simplify(y_h+y_p); % general solution
disp('The general solution of the given ODE is ')
disp(y1)
% The following lines for solving boundary value problem on [a,b]: