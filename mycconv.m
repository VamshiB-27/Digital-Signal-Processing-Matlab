function y= mycconv(x,h)
    y_len=max(length(x),length(h));
    y=zeros(1,y_len);

    % Padding
    % x = [x zeros(1,N-length(x))];   any method we can use
    % h = [h zeros(1,N-length(h))];
    while y_len>length(x)
        x=[x 0];
    end

    while y_len>length(h)
        h=[h 0];
    end

    for n=1:y_len
        for k=1:y_len
            y(n)=y(n)+x(mod(k-1,y_len)+1)*h(mod(n-k,y_len)+1);
        end
    end
end