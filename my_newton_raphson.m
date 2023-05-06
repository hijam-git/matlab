clc
clear all
g=@(x) x^3-2*x-5;
df=@(x) 3*x^2-2;
x0=input('First approximation: ');
t=input('Tolarence: ');
n=input('Number of iteration: ');

if df(x0)==0
    disp('No result for this value.');
else
    for i=1:n
        h=-g(x0)/df(x0);
        x1=x0+h;
        fprintf('The number of iternation %d and result %.6f\n',i,x1);
        if abs(x0-x1)<= t
            fprintf('The final result is %.6f\n',x1);
            break
        end
        x0=x1;
    end
end 
fplot(g,[-5,5]);
grid on;
hold on;
plot(x1,g(x1),'mo');
legend('x^3-2*x-5');
xlabel('x-axis');
ylabel('y- axis');
 
