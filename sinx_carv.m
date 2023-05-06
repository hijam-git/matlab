clc
clear all
f=@(x) x.^3-2*x-5;

fplot(f,[-5,5]);
grid on;
hold on;
plot(3,f(3),'mo');
legend('y= sin(x)');
xlabel('x-axis');
ylabel('y-axis');

