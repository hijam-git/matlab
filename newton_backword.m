all clear
clear fig
clear all
x=[1891 1901 1911 1921 1931];
y=[46 66 81 93 101];
n=length(y);
for l=1:n
    d(l, 1)=x(l);
end
disp(d)

for i=1:n
     d(i, 1)=y(i);
end
disp(d)
for i=1:n-1
    for j=1:i
        d(i+1, j+1)=d(i+1, j)-d(i, j);
    end
end
fprintf('The interpolation is\n');
disp(d)
z=input('The interpolation value:');
h=abs(x(2)-x(1));
u=(z-x(n))/h;
prod=1;
sum=y(n);
le=length(y)-1;
for i=1:le
    prod=prod*(u+i-1);
    sum=sum+(prod*d(n, i+1))/factorial(i);
end
fprintf('The interpolation of %.2f is %.4f', z, sum);
%graph of the function
plot(x,y, ':r', 'Linewidth', 2.5)
hold on
plot(z, sum, 'ok', 'Linewidth', 1.5)
grid on
%legend('Data Given', 'Interpolation value', 'northwest');
xlabel('x-axis', 'Fontsize',2)
ylabel('y-axis', 'Fontsize', 12)
