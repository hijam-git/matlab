clc
clear all

df=@(x,y) 3*x+y.^2;

x0=0; %initial value of x
y0=1; %initial value of y corresponding to x0
x=0.10; %y(x)
df2=@(x) 3+2*y*