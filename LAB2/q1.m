clear all;
close all;
clc;

a=20;
pi=3.14159276;
w=20*pi;
fs=1000;
ts=1/fs;
t=0:0.001:0.3-ts;
mat = zeros(10000,length(t));

for i=1:10000
    phi = rand(1,1)*2*pi;
    mat(i,:) = a*cos(t*w + phi);
end


z=zeros(1,length(t));
y=zeros(1,length(t));
for i=1:length(t)
    z(1,i)=mean(mat(:,1).*mat(:,i));
    y(1,i)=mean(mat(:,5).*mat(:,i));
end

figure
plot(z)
freq=linspace(-fs/2,fs/2-(fs/length(t)),length(t));
figure
stem(freq,fftshift(fft(z)))
