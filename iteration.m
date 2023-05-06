
clc
clear all
g=@(x) 1/sqrt(1+x);
dif=@(x) -0.5*(1+x)^-1.5;
x0=input('Enter the initial value: ');
t=input('Tolerence=');
n=input('Enter the iteration number');
while(dif(x0)>1)
 fprintf('There is no root');
end
for i=1:n
 x1=g(x0);
 fprintf('\nx%d= %.4f\n',i,x1);
 if abs(x1-x0)<t
 break
 end
 x0=x1;
end
fprintf('\n\n The root is %f',x1)
fplot(g,[-5,5]);
grid on
hold on
plot(x1,g(x1),'mo');
legend('f(x)=4*e^(-x)*sin(x)-1');
xlabel('x-axis');
ylabel('y-axis');
