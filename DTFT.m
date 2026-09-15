clc; close all; clear;

fs=1000;
ts=1/fs;
fc=1;
t=0:ts:1;
h=cos(2*pi*fc*t);

[my_d,w]=mydtft(h);

% Built-in DTFT using freqz
[built_d,~] = freqz(h,1,w);

error=max(abs(built_d-my_d))

figure;
subplot(2,1,1)
plot(t,h)

subplot(2,1,2)
plot(w,abs(my_d)/fs)
hold on
plot(w,abs(built_d)/fs)
legend('My DTFT','Built-in DTFT')