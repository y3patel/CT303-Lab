close all;
clear all;
clc;

a = ones(1,10)
for i=1:10
    if i==1
        a(1,i) = 2
    elseif i==2
        a(1,i) = 3
    else
        a(1,i) = 0
    end
end
