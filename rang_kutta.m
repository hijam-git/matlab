clc
all clear
disp('----Input----')
x(1)=input('The initial value of x = ');
y(1)=input('The initial value of y = ');
h=input('The initial value of h = ');
n=input('The number of steps = ');
disp('----Output----')
for i=1:n+1
    x(i+1) = x(i)+h;
    k1=h*f(x(i),y(i));
    k2=h*f((x(i)+(h/2)),(y(i)+(k1/2)));
    k3=h*f((x(i)+(h/2)),(y(i)+(k2/2)));
    k4=h*f((x(i)+h),(y(i)+k3));
    y(i+1) = y(i)+((1/6)*(k1+2*k2+2*k3+k4));
end
fprintf('\nThe value of y is %f',y);
%graph of the program
hold on
plot(x,y,'r')
y1=x+y;
plot(x,y1,'b')
hold off
function z=f(x,y)
    z=x+y;
end
