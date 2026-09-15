clc; close all; clear;

x=[10,2,3,4];

y_my=mydft(x);
k=0:length(y_my)-1;

y_built=(fft(x));

error=max(abs(y_built-y_my))

figure;
stem(k,abs(y_my))
hold on
stem(k,abs(y_built))
legend('My DFT','Built-in DFT')
