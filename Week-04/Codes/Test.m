clc;
clear all;
close all;

Fs=2000;
t=1/Fs:1/Fs:1/10;
x=sin(2*pi*500*t)+sin(2*pi*1000*t)+sin(2*pi*20*t);

X=DFT(x);
plot([1:length(x)]*2000/length(x),abs(X));


figure
x_re=idft(X);

subplot(3,1,1)
plot([1:length(x)]*2000/length(x),x); axis tight, grid ON;
subplot(3,1,2)
plot([1:length(x)]*2000/length(x),x_re); axis tight, grid ON;
subplot(3,1,3)
plot(x-x_re); axis tight, grid ON; 

P3(X);
