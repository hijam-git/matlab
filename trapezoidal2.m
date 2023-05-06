clc
clear all
f=@(x) (2*x)./(3*x+x.^3);
n=input('number of intervals = ');
a=input('the lower limit = ');
b=input('the upper limit = ');

h=(b-a)/n;
x=linspace(a,b,n+1); 
y = f(x);
%total = (h/2) * (sum(y(1:end-1)) + sum(y(2:end)));

sum1=0;
sum2=0;
for i=1:n+1
    if i<=n
        sum1=sum1+y(i); 
    end
    if i>1
        sum2=sum2+y(i);
    end
end
total=(h/2)*(sum1+sum2);
fprintf('\nThe calculated result is %f',total);
t=input('\naGive True he true value for error calculation = ');
error=((t-total)/t)*100;
fprintf('\nThe percentage of error is %f',abs(error));

plot(x,y,'b-');
hold on
area(x,y);
title('trapezoidal');
legend("1./(1+x.^2)");
xlabel('x axis');
ylabel('y axis');


