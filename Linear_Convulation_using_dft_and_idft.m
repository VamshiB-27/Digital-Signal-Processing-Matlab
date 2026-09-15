clc; clear; close all;

x=[1,2,6,5];
h=[6,2,3,9,10,9];

x=[x zeros(1,max(length(x),length(h))-length(x))];
h=[h zeros(1,max(length(x),length(h))-length(h))];

y_built=cconv(x,h,max(length(x),length(h)));

N=0:length(y_built)-1;

x_dft=mydft(x);
h_dft=mydft(h);

y_dft=x_dft.*h_dft;
y_my=myidft(y_dft);

error=max(abs(y_my-y_built))

stem(N,abs(y_my))
hold on
% Slightly shifted to show result's
stem(N-0.01,abs(y_built))
legend('My Conv using dft and idft','Built in Conv')