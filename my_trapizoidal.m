clc
clear all
disp("__input for Trapizoidal __");
f=@(x) (2*x)./(3*x+x.^3);
a=input("give lower limit ");
b=input("give uper limit ");
n=input("give number of separation ");
h=(b-a)/n;
S=0;
for i=1:(n-1)
    S=S+2*(f(a+i*h));
end
total=(h/2)*(f(a)+f(b)+S);
disp(total);

x=a:h:b;
y=f(x);
plot(x,y,':r');
hold on
area(x,y);
title('trapezoidal');
legend("1./(1+x.^2)");
xlabel('x axis');
ylabel('y axis');