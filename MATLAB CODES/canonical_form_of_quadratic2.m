syms x1 x2 y1 y2
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
    