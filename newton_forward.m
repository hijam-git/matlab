clc
all clear
clear fig
x=[1891 1901 1911 1921 1931];
y=[46 66 81 93 101];
m=length(y);
for i=1:m
    dt(i,1)=x(i);
    dt(i,2)=y(i);
end
n=m-1;
for j=3:m+1
    for i=1:n
        dt(i,j)=dt(i+1, j-1)-dt(i, j-1);
    end
    n=n-1;
end
fprintf('The forward difference table is given below:\n');
disp(dt)
z=input('The interpolation value is=');
h=x(2)-x(1);
p=(z-x(1))/h;
sum=y(1);
prod=1;
le=length(y)-1;
for i=1:le
    prod=prod*(p-i+1);
    sum=sum+(prod*dt(1, i+2))/factorial(i);
end
fprintf('The required interpolation value at %.2f is =%.6f', z, sum);
%graph of the function
plot(x,y, ':r', 'Linewidth', 2.5)
hold on
plot(z, sum, 'ok', 'Linewidth', 1.5)
grid on
%legend('Graph of the a given data', 'Interpolation value', 'northwest');
xlabel('x-axis', 'Fontsize',2)
ylabel('y-axis', 'Fontsize', 12)
hold off
