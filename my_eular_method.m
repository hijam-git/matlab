clc
clear all
f= @(x,y) x.^2+y.^2;
x0=0;
y0=0;
h=0.1;

n=4;
for i=1:n
    y1=y0+h*f(x0,y0);
    y0=y1;
    x0=x0+h;
end
disp(y1);
    
