syms x1 x2 x3 y1 y2 y3
choice=input("Enter number of variables")
if choice==3
    Q=input('enter the quadratic form in x1, x2 and x3')
a11=(1/2)*diff(diff(Q,x1),x1)
a22=(1/2)*diff(diff(Q,x2),x2)
a33=(1/2)*diff(diff(Q,x3),x3)
a12=(1/2)*diff(diff(Q,x1),x2)
a21=a12
a13=(1/2)*diff(diff(Q,x1),x3)
a31=a13
a23=(1/2)*diff(diff(Q,x2),x3)
a32=a23
A=[a11 a12 a13;a21 a22 a23;a31 a32 a33] %matrix of the quadratic form
[M D]=eig(A)
X=[x1;x2;x3];
Y=[y1;y2;y3]
disp('The canonical form is')
disp(D(1,1)*y1^2+D(2,2)*y2^2+D(3,3)*y3^2)
for i=1:3
M(:,i)=[M(1,i)/sqrt(M(1,i)^2+M(2,i)^2+M(3,i)^2) M(2,i)/sqrt(M(1,i)^2+M(2,i)^2+M(3,i)^2) M(3,i)/sqrt(M(1,i)^2+M(2,i)^2+M(3,i)^2)]
end
display('The orthogonal transformation is X=MY')
X==(M*Y)
else
    Q=input('Enter the quadratic form in x1 and x2');
A=hessian(Q)/2;
[M,D]=eig(A);
X=[x1;x2];
Y=[y1;y2];
disp('The canonical form is');
disp(D(1,1)*y1^2+D(2,2)*y2^2)
for i=1:2
    norm=sqrt(M(:,i)'*M(:,i));
    M(:,i)=M(:,i)/norm;
end
disp('The orthogonal transformation is X=MY')
X==(M*Y)
end