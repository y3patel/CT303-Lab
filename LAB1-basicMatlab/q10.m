close all;
clear all;
clc;

x = magic(10);
cel = x(:,3);
cel(1,1) = 0;
fer = [];
for i=1:10
    fer(i,1) = 9/5*cel(i,1) + 32;
end
cel = [cel,fer]