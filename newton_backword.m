x = [1891 1901 1911 1921 1931];
y = [46 66 81 93 101];

% Forward difference table
n = length(y) - 1;
dt(:,1) = x';
dt(:,2) = y';
for j = 3:length(y)+1
    for i = 1:n
        dt(i,j) = dt(i+1,j-1) - dt(i,j-1);
    end
    n = n - 1;
end

% Interpolation using Newton's forward difference formula
z = input('The interpolation value is=');
h = x(2) - x(1);
p = (z - x(1)) / h;
sum = y(1);
for i = 1:length(y)-1
    prod = 1;
    for j = 1:i
        prod = prod * (p - j + 1);
    end
    sum = sum + (prod * dt(1, i+2)) / factorial(i);
end
fprintf('The required interpolation value at %.2f is = %.6f\n', z, sum);

% Plot graph
plot(x, y, ':r', 'Linewidth', 2.5);
hold on;
plot(z, sum, 'ok', 'Linewidth', 1.5);
grid on;
xlabel('x-axis', 'Fontsize', 12);
ylabel('y-axis', 'Fontsize', 12);
legend('Graph of the given data', 'Interpolation value', 'Location', 'northwest');
hold off;
