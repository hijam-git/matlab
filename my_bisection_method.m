clc
clear all
f=@(x) (sin(x))^2-x^2+1;
a= input('uper interval ');
b= input('lower interval ');
t= input('tolarence ');
n= input('number of iteration ');

if f(a)*f(b)>0
    disp('Root does not lie between your intervals');
else
    for i=1:n
        x0=(a+b)/2;
        fprintf('iteration number no. %d result = %.6f\n',i,x0);
        if f(x0)*f(a)<0
            b=x0;
        else
            a=x0;
        end
        if abs(f(a)-f(b))<t
            fprintf('the final result is %.6f',x0);
            break
        end
    end
end

fplot(f,[-20,20]);
grid on;
hold on;
plot(x0,f(x0),'mo');
legend('sin^2(x)-x^2+1');
xlabel('x-axis');
ylabel('y- axis');
    