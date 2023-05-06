clc
clear all
f=@(x) 1./(1+x.^2);

a = input('The lower limit = ');
b = input('The upper limit = ');
n = input('Number of intervals = ');

h=(b-a)/n;
S=0;
for i=2:2:n
    disp(i-1);
 S=S+f(a+(i-1)*h);
end
s=0;
for i=3:2:n
    disp(i-1);
 s=s+f(a+(i-1)*h);
end
total=(h/3)*(f(a)+4*S+2*s+f(b));
fprintf('\nThe calculated result is %f',total);

t = input('\nGive true value for error calculation = ');
error = ((t-total)/t)*100;
fprintf('\nThe percentage of error is %f',abs(error));

fprintf('total= %f',total);
hold on
x=a:h:b;
y=f(x);
area(x,y)
title('Simpson''s 1/3 Rule');
legend("1./(1+x.^2)");
xlabel('X-Axis');
ylabel('Y-Axis');

