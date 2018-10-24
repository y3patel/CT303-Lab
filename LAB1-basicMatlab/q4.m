close all;
clear all;
clc;

a = [5 6 10; -3 0 14; 0 -7 21; 2 -1 45]
b = [4; 10; 0; 16]
ans = pinv(a)*b
