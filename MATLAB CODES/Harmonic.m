syms t
n= input('Enter the number of data points n : '); % number of x values
x_0= input('Enter the starting value of x : '); % x_1 [x(1), x(n)] x_1=x_0+s, x_2=x_1+s= x_0+2s
count = input('type 0 if the unit of x is deg. type a non-zero number otherwise');
s=input('Enter the length of the spacing between successive values of x :');
n1= input('Enter the number of harmonic of the series n1 : '); % a_1, a_2, a_{n1}
for i=1:n
x(i)=x_0+(i-1)*s; 
end % x_1, x_2, x_3, .... , x_n x_2-x_1=s
if (count == 0)
x=x*pi/180;
s=s*pi/180;
end
y = input('Enter the y values (as a row vector) :') % y=[y_1 y_2 y_3 y_n]
if y(1)== y(n)
l=0.5*(x(n)-x(1)); % l=pi if it is degree function f has period 2pi
else
l=0.5*(x(n)+s-x(1)); 
end 
a_0= (2/n)*sum(y)
for i=1:n1
yc=y.*cos(i*pi*x/l);
ys=y.*sin(i*pi*x/l);
a(i)=(2/n)*sum(yc);
b(i)=(2/n)*sum(ys);
end
F_s=a_0/2;
for i=1:n1
subplot(n1,1,i)
plot(x,y,'r*');
hold on
F_s = F_s+a(i).*cos(i*pi*t/l)+b(i).*sin(i*pi*t/l); % a(i).*cos(i*pi*t/l)+b(i).*sin(i*pi*t/l) is called fundamentals of harmonics or i^th harmonic
subplot(n1,1,i)
ezplot(F_s, [x(1) x(n)])
end
disp('Fourier series :')
vpa(F_s,4)