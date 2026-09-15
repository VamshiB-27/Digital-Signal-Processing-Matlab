function [y,w]=mydtft(h)
    w=-pi:0.01:pi;
    y=zeros(1,length(w));
    for k=1:length(w)
        for n=1:length(h)
            y(k)=y(k)+h(n)*(power(exp(i),-w(k)*(n-1)));
        end   
    end    
end