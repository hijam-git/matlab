clc
clear all
f=@(x) x^3+x^2-3*x-3;
a= input('Uper interval ');
b= input('Lower interval ');
t= input('Tolarence ');
n= input('Number of iteration ');

if f(a)*f(b)>0
    disp('Root does not lie between your intervals');
else
    for i=1:n
        x0=(b*f(a)-a*f(b))/(f(a)-f(b));
        fprintf('Iteration number no. %d and result = %.4f\n',i,x0);
        if f(x0)*f(a)<0
            b=x0;
        else
            a=x0;
        end
        if abs(f(a)-f(b))<t
            fprintf('The final result is %.4f',x0);
            break
        end
    end
end

fplot(f,[-20,20]);
grid on;
hold on;
plot(x0,f(x0),'mo');
legend('x^3+x^2-3*x-3');
xlabel('x-axis');
ylabel('y- axis');
    