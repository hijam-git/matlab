clc
clear all
fx=@(y,z) (1/4)*(17-y-3*z); % ekhane x er quation
fy=@(x,z) (1/5)*(14-x-z);
fz=@(x,y) (1/8)*(12-2*x+y);
n=100;
tr=0.0001;
x0=0;
y0=0;
z0=0;
for i=1:n
    x1=fx(y0,z0);
    y1=fy(x0,z0);
    z1=fz(x0,y0);
    if abs(x1-x0)<=tr
        fprintf('\nx=%f  y=%f  z=%f',x1,y1,z1);
        break
    else
        x0=x1;
        y0=y1;
        z0=z1;
        fprintf('\niter=%d x=%f  y=%f  z=%f',i,x1,y1,z1);
    end
end 