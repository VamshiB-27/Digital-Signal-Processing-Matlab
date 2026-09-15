clc; close all; clear;

fs=100;
ts=1/fs;
fc=1;

for i=1:4
    t=-i*20:ts:i*20;
    h=sin(2*pi*fc*t)./(pi*t);
    h(t==0)=2*fc;

    [my_d,w]=mydtft(h);
    
    % Built-in DTFT using freqz
    [built_d,~] = freqz(h,1,w);
    
    error=max(abs(built_d-my_d))

    subplot(4,1,i)
    plot(w,abs(my_d)/fs)
    hold on
    plot(w,abs(built_d)/fs)
    legend('My DTFT','Built-in DTFT')
    xlim([-0.1,0.1])

end