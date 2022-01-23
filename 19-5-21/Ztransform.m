clc
clear all
format compact
syms p(n) z pZT 
assume(n>=0 & in(n,'integer'))
a=input('Enter the coefficient of p_n+2:')
b=input('Enter the coefficient of p_n+1:')
c=input('Enter the coefficient of p_n:')
G=input('Enter the RHS function:') %non homogeneous part
f=a*p(n+2)+b*p(n+1)+c*p(n)-G
fZT = ztrans(f,n,z)
fZT = subs(fZT,ztrans(p(n),n,z),pZT)
pZT = solve(fZT,pZT)
pSol = iztrans(pZT,z,n)
pSol = simplify(pSol)
a=input('Enter the value of p_0:');
b=input('Enter the value of p_1:');
disp('Solution of the difference equation is given by:')
pSol= subs(pSol,[p(0) p(1)],[a b])
nValues = 1:10;
pSolValues = subs(pSol,n,nValues);
pSolValues = double(pSolValues);
pSolValues = real(pSolValues);
stem(nValues,pSolValues)
grid on