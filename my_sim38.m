clc
clear all
disp("__input for 3/8 __");
f=@(x) 1./(1+x.^2);

a=input("give lower limit ");
b=input("give uper limit ");
n=input("give number of separation ");
h=(b-a)/n;
S=0;
for i=1:(n-1)
    if rem(i,3)==0
        S=S+2*(f(a+i*h));
    else
        S=S+3*f(a+i*h);
    end
end
total=(3*h/8)*(f(a)+f(b)+S);
disp(total);

x=linspace(a,b,n+1);
y=f(x);
plot(x,y);
hold on;
area(x,y)
title(" simpson 1/3");
legend("equation");
xlabel('xaxis');
ylabel('yaxis');


