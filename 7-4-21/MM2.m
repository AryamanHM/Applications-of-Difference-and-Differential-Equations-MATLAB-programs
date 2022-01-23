   
syms x(t) y(t)
A=input('enter the matrix A in dY/dt=AY+nh:'); % Y=[x'; y']
nh=input('enter nh as a column vector in dY/dt=AY+nh:'); % nh=[f1; f2]
Y = [x; y];
odes = diff(Y) == A*Y + nh;
odes(t)
[xSol(t), ySol(t)] = dsolve(odes);
disp('the solution is given by:')
xSol(t) = simplify(xSol(t))
ySol(t) = simplify(ySol(t))
