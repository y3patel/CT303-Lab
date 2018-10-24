close all;
clear all;
clc;

a = [6 0 3 1 4 2; 0 -1 2 7 0 5; 12 3 0 -19 8 -11]
x = rank(a)
if x==3
    'independent'
else
    'dependent'
end
    


