clc
clear all
f1= @(x) x^2-9;
result = f1(2);
disp('1st value');
interval1 = input('1st value of inter val');
f2= f1(interval1);
interval2 = input('2nd value of inter val');
f3= f1(interval2);
if f2*f3 > 0
    disp('put value again');
else
    disp('nice choosing');
end


iter=1;
for i=1:100
    x1=(interval1+interval2)/2;

    f4=f1(x1);
    if f4 <= 0.001
        fprintf('root is %.2f',f4);
        break
    else
        
        if f4*f1(interval1) <0
            
            
    end
    iter = iter +1
end


