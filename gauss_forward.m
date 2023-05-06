clc
all clear
x=[30 35 40 45 50];
y=[5.4772 5.9161 6.3246 6.7082 7.0711];
u=[-2 -1 0 1 2];
s=input('Please the origin=');
m=length(y);
for i=1:m
    d(i,1)=x(i);
    d(i,2)=u(i);
    d(i,3)=y(i);
end
n=m+2;
l=m-1;
for j=4:n
    for i=1:l
        d(i,j)=d(i+1, j-1)-d(i, j-1);
    end
    l=l-1;
end
disp(d)
z=input('The interpolation value=');
h=x(2)-x(1);
u=((z-s)/h);
p1=d(3,3);
p2=u*d(3,4);
p3=(u*(u-1)/2)*d(2,5);
p4=(((u+1)*u*(u-1))/6)*d(2,6);
p5=(((u-2)*(u+1)*u*(u-1))/24)*d(1,7);
sum=p1+p2+p3+p4+p5;
fprintf('The required interpolation value is = %.4f\n', sum);