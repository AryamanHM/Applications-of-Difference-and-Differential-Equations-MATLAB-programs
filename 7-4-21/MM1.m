syms t c1 c2
c=[c1 c2];
A=input('enter the matrix A in dy/dt=Ay+h:');
nh=input('enter nh as a row vector in dy/dt=Ay+h:');
n=length(A);
[P,D]=eig(A)
PP=inv(P)
g=PP(:,1)*nh(1)+PP(:,2)*nh(2)
for i=1:n
u(i)=c(i)*exp(D(i,i)*t)+(exp(D(i,i)*t)*int(g(i)*exp(-D(i,i)*t)));
end
y=simplify(P(:,1)*u(1)+P(:,2)*u(2))
disp('the solution vector is given by:')
disp(y)