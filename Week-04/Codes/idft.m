
function x_re=idft(X) 
    N=length(X);
    x_re=zeros(1,N);
    j=sqrt(-1);
    
    for n=1:N
        temp=0;
        for k=1:N
            temp=temp+X(k)*exp(j*2*pi*(n-1)*(k-1)/N);
        end
        x_re(n)=1/N*temp;
    end

end