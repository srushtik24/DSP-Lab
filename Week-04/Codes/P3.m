function []=P3(X)
    Fs=2000; 
    N=length(X);
    A=zeros(1,N);
    A(1)=1/N*abs(X(1));
    P=zeros(1,N);
    f=zeros(1,N);
    
    for k=2:N/2+1
        A(k)=2/N*abs(X(k)); %One sided amplitude
    end
    
    for k=1:N
        P(k)=atan(imag(X(k))/real(X(k))); %Phase Spectrum
    end

    f=[1:length(X)]*2000/length(X);
    figure
    subplot(2,1,1)
    plot(f,A); axis tight; grid ON; 
    xlabel('Frequency component'); ylabel('Amplitude'); title('Amplitude spectrum');
    subplot(2,1,2)
    plot(f,P); axis tight; grid ON;
    xlabel('Frequency component'); ylabel('Phase'); title('Phase spectrum');

end