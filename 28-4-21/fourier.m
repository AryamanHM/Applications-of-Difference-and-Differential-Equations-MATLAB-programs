syms x
f=input('Enter the function in terms of x:')
L=input('Enter the lower limit of the domain')
U=input('Enter the upper limit of the domain') % (L,U)
L1=(U-L)/2;
disp('Enter value of N between 1 and 7')
N=input('Enter the number of terms N')
a_0=vpa((2/(U-L))*int(f,x,L,U),4); % 
F_s=a_0/2;
for n=1:1:N
a(n)=vpa((2/(U-L))*int(f*cos((n*pi*x)/L1),x,L,U),4); %2/(U-L)=1/L1
b(n)=vpa((2/(U-L))*int(f*sin((n*pi*x)/L1),x,L,U),4);
F_s=F_s+a(n)*cos((n*pi*x)/L1)+b(n)*sin((n*pi*x)/L1) % F_s= a0/2+a1+b1 ; 2nd iteration: F_s= a0+a1+b1+a2+b2
subplot(N,1,n) 
plot1=ezplot(f,[L,U]);
set(plot1,'color','r')
hold on
ezplot(F_s,[L,U]) 
end
