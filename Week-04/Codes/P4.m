clc;
close all;
clear all;

%% Calculation Dft and Idft:

load('ecg_powerline_0p05.mat') %Loading our input signal
input=ecg_0p05;
N=length(input);

X_edit=zeros(1,N);
x_edit=zeros(1,N);
x_dft=zeros(1,N);

[x_dft,~]=DFT(input); %This is for comparison purpose solely
[X_edit,fk2]=DFT(input); %For deleting the noise section 
k1=(48*N)/125;
k2=(52*N)/125;

X_edit(k1:k2)=0; %Silencing frequency components from 48hz-50hz
x_edit=idft(X_edit);
f=[1:length(input)]*625/length(input); %For equalizing x-axes of time domain signals


%% Time and Frequency Domain comparison:

%Time Domain-
subplot(3,1,1)
plot(f,input); axis tight; grid ON;
xlabel('Discrete Time'); ylabel('Amplitude'); title('Original Signal');
subplot(3,1,2)
plot(f,x_edit); axis tight; grid ON;
xlabel('Discrete Time'); ylabel('Amplitude'); title('Reconstructed Signal');
subplot(3,1,3)
plot(f,input-x_edit); axis tight; grid ON;
xlabel('Discrete Time'); ylabel('Amplitude'); title('Error');
sgtitle('Time Domain Comparison');

%Frequency Domain-
figure
subplot(3,1,1)
plot(fk2,abs(x_dft)); axis tight; grid ON;
xlabel('Sample'); ylabel('Amplitude'); title('Original Signal');
subplot(3,1,2)
plot(fk2,abs(X_edit)); axis tight; grid ON;
xlabel('Samples'); ylabel('Amplitude'); title('Reconstructed Signal');
subplot(3,1,3)
plot(fk2,abs(x_dft-X_edit)); axis tight; grid ON;
xlabel('Samples'); ylabel('Amplitude'); title('Error');
sgtitle('Frequency Domain Comparison');
