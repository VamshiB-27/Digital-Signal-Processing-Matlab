clc; clear; close all;

x=[2 8 3];
h=[10 9 6 10];

y_mc=mycconv(x,h)
y_bc=cconv(x,h,max(length(x),length(h)))

n=linspace(0,length(y_mc)-1,length(y_mc));

% Error
error=y_mc-y_bc
error_m=max(error)

figure;
stem(n,y_mc)
hold on
stem(n,y_bc)
legend('My Conv','built-in Conv')