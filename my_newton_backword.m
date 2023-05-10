clc
clear all
x=[1891 1901 1911 1921 1931];
y=[46 66 81 93 101];
m=length(y);
for i=1:m
    dt(i,1)=x(i);
    dt(i,2)=y(i);
end 
disp(dt);
n=m;
for j=3:m+1
    for i=j-1:n
        dt(i,j)=dt(i,j-1)-dt(i-1,j-1);
    end
end
disp(dt);
z= input("iteration value fo backward");
h = x(2)-x(1);
u = (z - x(end))/h; % Calculate p based on the last value of x

term=1;
sum= y(m);
le=length(y)-1;
for i=1:le
    term=term*(u+i-1);
    sum=sum+(term*dt(n,i+2)/factorial(i));
end
disp(sum);


plot(x,y,':r', 'LineWidth', 2.5);
hold on
plot(z,sum, 'ok', 'LineWidth', 2.5);
xlabel('xaxis');
ylabel('yaxis');
