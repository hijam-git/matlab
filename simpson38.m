clc
clear all
f=@(x) 1./(1+x.^2);
n=input('number of intervals = ');
a=input('the lower limit = ');
b=input('the upper limit = ');
 
h=(b-a)/n;
S=0;
for i=2:3:n
 for j=i:i+1
 S=S+f(a+(j-1)*h);
 end
end
s=0;

for i=4:3:n
 s=s+f(a+(i-1)*h);
end
total=((3*h)/8)*(f(a)+3*S+2*s+f(b));
fprintf('\nThe calculated result is %f',total);
t=input('\naGive True he true value for error calculation = ');
error=((t-total)/t)*100;
fprintf('\nThe percentage of error is %f',abs(error));

grid on
hold on
x=a:h:b;
y=f(x);
area(x,y)
xlabel('X-Axis');
ylabel('Y-Axis');
