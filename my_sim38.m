clc
clear all
disp("__input for 3/8 __");
%f=@(x) 1./(1+x.^2);
f=@(x) (2*x)./(3*x+x^3);
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