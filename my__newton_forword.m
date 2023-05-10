clc
clear all
clear fig
x=[1891 1901 1911 1921 1931];
y=[46 66 81 93 101];
m=length(y);
for i=1:m
    dt(i,1)=x(i);
    dt(i,2)=y(i);
end
disp(dt);
n=m-1;
for j=3:m+1
    for i=1:n
        dt(i,j)=dt(i+1, j-1)-dt(i, j-1);
    end
    n=n-1;
end
disp(dt);

z= input("iteration value");
h = x(2)-x(1);

u= (z-x(1))/h;


term=1;
sum= y(1);
le=m-1;
for i=1:le
    term=term*(u-i+1);
    sum=sum+(term*dt(1,i+2)/factorial(i));
end
disp(sum);

plot(x,y,  'Linewidth', 2.5)
hold on
plot(z,sum, 'ok', 'Linewidth', 2.5)
xlabel('xaxis');
ylabel('yaxis');


