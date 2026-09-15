function x=myidft(y)
    x_len=length(y);
    x=zeros(1,x_len);
    for n=1:x_len
        for k=1:x_len
            x(n)=x(n)+y(k)*power(exp(i),2*pi*(n-1)*(k-1)/(x_len));
        end
    end
    x=x/x_len;
end