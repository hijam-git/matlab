clc
clear all
clear fig
disp('.....input......');
x=[1891 1901 1911 1921 1931];
y=[46 66 81 93 101];
m=length(y);
dt = zeros(m,m+1);
disp(m);
disp(dt)
for i=1:m
    dt(i,1)=x(i);
    dt(i,2)=y(i);
end
disp(dt);
n=m-1;
for j=3:m+1
    for i=1:n
        dt(i,j)=dt(i+1,j-1)-dt(i,j-1);
    end
    n=n-1;
end
disp(dt)
z=input('interpolated value');
h=abs(x(2)-x(1));
r=(z-x(1))/h;
sum=y(1);
p=1;
le=length(y)-1;
for i=1:le
    p=p*(r-i+1);
    sum = sum+(p*dt(1,1+2))/factorial(i);
end
fprintf('the required value at %2.f is =%.6f\n',z,sum);
    

plot(x,y,':r','linewidth',2.5);
hold on
plot(z,sum,'ob','linewidth',1.5);
grid on
title('Newton  backword interpolation ');

xlabel('x-axis','fontsize',12)
ylabel('y-axis','fontsize',12)
hold off





