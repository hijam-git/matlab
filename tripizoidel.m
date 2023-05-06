clc
clf
clear all
f=@(x) x.^3;
a = 0; %input('Enter lower limit, a: ');
b = 2; %input('Enter upper limit, b: ');
n = 6; %input('Enter no. of subintervals, n: ');
h=(b-a)/n;
S = f(a)+f(b);
for i=1:n-1
 S = S+2*f(a+i*h);
end
I = h/2 *S;
fprintf('The value of integration is %f \n', I);
x = linspace(a,b,2^n+1);
y=f(x);
area(x,y)
 title('Bar Plot of Trapizoidal Rule');
xlabel('X Axis') ;
ylabel('Y Axis') 