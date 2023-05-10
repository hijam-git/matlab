clc
clear all
disp("__input__");
f=@(x) 1./(1+x.^2);
a=input("give lower limit ");
b=input("give uper limit ");
n=input("give number of separation ");
h=(b-a)/n;
S=0;
for i=1:(n-1)
    if rem(i,2)==0
        S=S+4*(f(a+i*h));
    else
        S=S+2*f(a+i*h);
    end
end
total = (h/3)*(f(a)+f(b)+S);
disp(total);




    


