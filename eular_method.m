clc
clear all
disp('----Input----')
x(1)=input('The initial value of x = ');
y(1)=input('The initial value of y = ');
h=input('The initial value of h = ');
n=input('The number of steps = ');
disp('----Output----')
for i=1:n
    y(i+1)=y(i)+h*f(x(i),y(i));
    x(i+1)=x(i)+h;
end
fprintf('\n The value of y is %f\n',y);

%graph of the program
hold on
plot(x,y,'r')
title('Euler Method')
xlabel('x-axis')
ylabel('y-axis')
hold off

function z=f(x,y)
z=x.^2+y.^2;
end

