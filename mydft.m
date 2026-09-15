function y=mydft(x)
    y_len=length(x);
    y=zeros(1,y_len);
    for k=1:y_len
        for n=1:y_len
            y(k)=y(k)+x(n)*power(exp(-1i),2*pi*(n-1)*(k-1)/y_len);
        end 
    end
end