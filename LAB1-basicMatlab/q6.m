close all;
clear all;
clc;
x = magic(5);
a = x(1,:)
b = x(3,:)
ans = []
for i=1:length(a)
    ans(1,i) = (a(1,i) + b(1,i))/2
end
