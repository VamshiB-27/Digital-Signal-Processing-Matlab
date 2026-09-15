clc; clear; close all;

x=[1,2,6,5];
h=[6,2,3,9,9,12,8,9,1];

linear_len=length(x)+length(h)-1;

% Adjusting length of circular conv to linear conv so we get as
% result as linear conv
x_adj=[x zeros(1,linear_len-length(x))];
h_adj=[h zeros(1,linear_len-length(h))];

y_built=conv(x,h);

N=0:length(y_built)-1;

x_dft=mydft(x_adj);
h_dft=mydft(h_adj);

y_dft=x_dft.*h_dft;
y_my=myidft(y_dft);

error=max(abs(y_my-y_built))

stem(N,abs(y_my))
hold on
% Slightly shifted to show result's
stem(N-0.01,abs(y_built))
legend('My Conv using dft and idft','Built in Conv')