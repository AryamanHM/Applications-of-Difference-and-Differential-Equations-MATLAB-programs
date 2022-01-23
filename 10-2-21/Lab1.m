x=input('Give value of a');
y=input('Give value of b');
z=input('Give value of c');
syms a b c
M=[(2*a-c) (a-c) (-2*a+2*c);(2*a-2*b) (a) (-2*a+2*b);(2*a-b-c) (a-c) (-2*a+b+2*c)];
M=subs(M,a,x);
M=subs(M,b,y);
M=subs(M,c,z);
M
t=trace(M)
eigen_of_a=eig(a)
t1=M(1,1)+M(2,2)+M(3,3)
t2=0;
for i=1:1:3
    t2=t2+M(i,i);
end
t2
n=input('Give value of order of matrix');
m=zeros(n,n);
for i=1:1:n;
    for j=1:1:n;
        m(i,j)=i+j;
    end
end
m
t3=0;
for i=1:1:n
    t3=t3+m(i,i);
end
t3
x=[0:0.2:pi/2];
y=sin(x);
plot(x,y)
m1=[3 -1 1;7 -5 1;6 -6 2];
[V,D] = eig(m1)
quiver(V,D);