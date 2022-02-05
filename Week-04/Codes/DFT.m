
function [X,fk]=DFT(x)    
    N=length(x);
    X=zeros(1,N);
    j=sqrt(-1);
    Fs=125;
    fk=zeros(1,N); %To get the x-axis for frequency
    for k=1:N
        temp=0;
        for n=1:N
            temp=temp+x(n)*exp(-j*2*pi*(n-1)*(k-1)/N);
        end
        X(k)=temp; %DFT Output
        fk(k)=k*Fs/N;
    end

end