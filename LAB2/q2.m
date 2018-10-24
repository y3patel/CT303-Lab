clear all;
close all;
clc;

a=10;
pi=3.145;
fs=10000;
ts=1/fs;
t=0:ts:(0.3-ts);
y=zeros(10000,length(t));

for i=1:10000
  y(i,:)=randn(1,length(t));
end
figure(1)
hist(y);

z=zeros(1,length(t));
for i=1:1:length(t)
    z(1,i)=mean(y(:,1).*y(:,i));
end
k=1:1:length(t);
figure(2);
plot(k,z)
freq=linspace(-fs/2,fs/2-(fs/length(t)),length(t));
figure(3);
stem(freq,fftshift(fft(abs(z))))