% Define the function whose root needs to be found
f = @(x) x^2 - 9;

% Define the derivative of the function
df = @(x) 2*x;

% Set the initial guess for the root
x0 = 1;

% Set the tolerance for the error
tol = 1e-6;

% Set the maximum number of iterations
maxIter = 1000;

% Perform the Newton-Raphson iteration
for i = 1:maxIter
    % Evaluate the function and its derivative at the current guess
    fval = f(x0);
    dfval = df(x0);
    
    % Compute the next guess for the root using the Newton-Raphson formula
    x1 = x0 - fval / dfval;
    
    % Check if the error is below the tolerance
    if abs(x1 - x0) < tol
        break;
    end
    
    % Update the guess for the root
    x0 = x1;
end

% Display the root
disp(['The root of the function is: ', num2str(x1)]);
