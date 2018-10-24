clear all;
close all;
clc;

[y,fs]=audioread('C:\Users\student\Documents\112-113\LAB 4\speech_waveform_LAB4(1).wav');


len=length(y);
f=8000;
y1=zeros(len,1);
n=fs/f;
for i=1:len
    if(mod(i,n)==0)
        y1(i,1)=y(i);
    end
end
sound(y1,fs);
filename = '.wav';
audiowrite(filename,y1,fs);