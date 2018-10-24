close all;
clear all;
clc;

prob = 0;
for i=1:1000000
    cnt = 0;
    a = rand(4);
    for j=1:4
        if a(1,j) <= 0.75
            cnt = cnt+1;
        end
    end
    if cnt == 3
        prob=prob+1;
    end
end
prob = prob/1000000
