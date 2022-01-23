syms x r c1 c2 t
k1=input('Enter coefficient of (ax+b)^2 d^2y/dx^2:');
k2=input('Enter coefficient of (ax+b) dy/dx:');
k3=input('Enter coefficient of y:');
a=input('Enter the value of a:');
b=input('Enter the value of b:');
f1=input('Enter f in terms of x:');
f=simplify(subs(f1,x,(exp(t)-b)/a));
eq=k1*a^2*r^2+(a*k2-a^2*k1)*r+k3;
r=solve(eq,r);
p=real(r(1));
q=imag(r(1));
if q~=0
y1=exp(p*t)*cos(q*t);
y2=exp(p*t)*sin(q*t);
elseif r(1)==r(2)
y1=exp(p*t);
y2=t*exp(p*t);
else
y1=exp(r(1)*t);
y2=exp(r(2)*t);
end
yc=c1*y1+c2*y2;
w=y1*diff(y2,t)-y2*diff(y1,t);
yp=-y1*int(y2*f/(a^2*k1*w),t)+y2*int(y1*f/(a^2*k1*w),t);
yy=yc+yp;
y1=subs(yy,t,log(a*x+b));
disp('General solution of the given ODE is given by')
disp(simplify(y1))