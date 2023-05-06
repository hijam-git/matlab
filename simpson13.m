clc
clear all
f = @(x) 1./(1+x.^2);
n = input('Number of intervals = ');
a = input('The lower limit = ');
b = input('The upper limit = ');

h = (b-a)/(2*n);
x = linspace(a,b,2*n+1); 
y = f(x);

sum_odd = 0;
sum_even = 0;

for i=1:2*n+1
    if mod(i,2) == 1
        sum_odd = sum_odd + y(i); 
    elseif mod(i,2) == 0 && i~= 2*n+1
        sum_even = sum_even + y(i);
    end
end

total = (h/3)*(y(1) + 4*sum_odd + 2*sum_even + y(end));
fprintf('\nThe calculated result is %f',total);

t = input('\nGive true value for error calculation = ');
error = ((t-total)/t)*100;
fprintf('\nThe percentage of error is %f',abs(error));

x_plot = linspace(a,b,1000); 
y_plot = f(x_plot);
plot(x_plot,y_plot,'b-');
hold on
area(x_plot,y_plot);
title('Simpson''s 1/3 Rule by robot');
legend("1./(1+x.^2)");
xlabel('x axis');
ylabel('y axis');
