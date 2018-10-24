close all;
clear all;
clc;

A = gallery('lehmer',5)
[v,d] = eig(A)
if det(A - d*eye(5)) < 1
    'nice'
else
    'not nice'
end
