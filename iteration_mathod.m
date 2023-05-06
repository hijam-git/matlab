clc;
clear all ;
g = @(x) (x^3+x^2-1);
g_phi=@(x) (1-x^2)^(1/3); % finding x phi
df = @(x) 3*(x.^2) - 2*x;
x0 = input('initial value: ');
t = input('tolerance: ');
n = input('iteration number: ');

if (abs(df(x0)) >= 1)
    disp('There is no root');
else
    for i = 1:n
        x1 = g_phi(x0);
        fprintf('Iter no. %d result=%.4f\n', i, x1);
        if abs(x1 - x0) <= t
            break;
        end
        x0 = x1;
    end
    if i == n
        disp('Maximum number of iterations reached.');
    else
        fprintf('The root is %.4f\n', x1);
    end
end

fplot(g,[-5,5]);
grid on;
hold on;
plot(x1,g(x1),'mo');
legend('g(x) = x^3 + x^2 - 1');
xlabel('x-axis');
ylabel('y-axis');
