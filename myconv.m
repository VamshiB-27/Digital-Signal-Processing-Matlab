function y= myconv(x,h)
    y_len=length(x)+length(h)-1;
    y=zeros(1,y_len);
    for n=1:y_len
        for k=0:y_len
            if((n-k)>length(h)||(n-k)<1||k>(length(x)-1)||k<0)
                continue
            else
                y(n)=y(n)+x(k+1)*h(n-k);
            end
        end
    end
end