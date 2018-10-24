clear all;
close all;
clc;

fs = 400;
ts = 1/fs;

fm = 50;
tm = 1/fm;

t=0:ts:tm-ts;

a=cos(2*pi*fm*t);

sol = zeros(1,8);

for i = 1:8
    temp = 0;
    for k = 1 : 8
        temp = temp + (cos((2*pi*50*k)/fs) )* exp((-1*j) * (2*pi*k*i)/8);
    end
    sol(1,i) = temp;
    
end

stem(sol);
