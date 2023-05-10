clc
clear all

f=@(x,y) x+y;
h=0.1; %steping interval
x0=0; %initial value of x
y0=0; %initial value of y corresponding to x0
x=01.20; %y(x)
n=x/h; %number of times we have to iter
disp(n);
xplot(1)=x0;
yplot(1)=y0;
for i=1:n 
    k1=h*f(x0,y0);
    k2=h*f((x0+h/2),(y0+k1/2));
    k3=h*f((x0+h/2),(y0+k2/2));
    k4=h*f((x0+h),(y0+k3));

    y1=y0+(1/6)*(k1+2*k2+2*k3+k4);
    y0=y1;
    x0=x0+h;
    xplot(1+i)=x0;
    yplot(1+i)=y0;
end
fprintf('%d',y1);
plot(xplot,yplot,'r');
hold on;
plot(x0,y0,'ok');


