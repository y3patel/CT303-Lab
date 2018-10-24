close all;
clear all;
clc;

a = linspace(0,2*pi,1000);
y1 = sin(a)

figure,
plot(a,y1);

b = linspace(0,10,100)
y2 = (b.^2)-(10*b)+15

figure,
plot(b,y2);

c = [1 2 3 4 5]
stem(c)
x=-2:2

stem(x,c);
