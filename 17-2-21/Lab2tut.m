syms x y
Q=x^2+6*x*y-7*y^2
A=hessian(Q)
A=hessian(Q)/2
[M D]=eig(A)
M(:,1)
M(:,2)
M(:,2)'*M(:,1)
M(:,1)'*M(:,1)
norm1=M(:,1)'*M(:,1)
orthonormalvector1=M(:,1)/norm1
orthonormalvector1'*orthonormalvector1
sqrt(M(:,1)'*M(:,1))
norm=sqrt(M(:,1)'*M(:,1))
orthonormalvector1=M(:,1)/norm
orthonormalvector1'*orthonormalvector1
norm2=sqrt(M(:,2)'*M(:,2))
orthogonalvector2=M(:,2)/norm
