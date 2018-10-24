clear all;
close all;
clc;

fs=400;
ts=1/fs;
fm=50;
tm=1/fm;
t=0:ts:(2*tm-ts);                                    
x=cos(2*pi*fm*t);
stem(x);
