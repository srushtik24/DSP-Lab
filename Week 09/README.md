# **WEEK -09: IIR Filter Design Using Pole-Zero Placement Method:**

## Aim: 
In this experiment, we design lowpass, highpass, bandpass and bandpass filters using the pole-zero placement method. For the each of the filter specifications, 
* Find the transfer function 
* Sketch the magnitude and phase responses and pole-zero plot 
* Obtain the difference equation for each of the filtering system 
* Obtain the output of each of the IIR filter systems for the input ECG and PPG signals sampled at rate of 360 Hz. [Verify MATLAB Implementation] 

</hr>

## P1: Low Pass Filter:
Derivation of transfer function and Difference equation:
<p align="center">
  <img src="Pictures\WhatsApp Image 2022-04-03 at 12.17.23 PM.jpeg"> 
</p>

Code:
``` cpp
clc;
clear all;
close all;

% LPF:
w = 0:0.01:pi;
fs = 360;
f = w*fs/(2*pi);
x = exp(sqrt(-1)*w);

alpha = 1-2*pi/9;
K = (1-alpha)/2;
h = K*(x+1)./(x-alpha);

subplot(2,1,1)
plot(f,abs(h));axis tight; grid ON;
xlabel('Frequency (f) in Hz'); ylabel('Amplitude'); title('Magnitude response of LPF');

subplot(2,1,2)
plot(f,angle(h));axis tight; grid ON;
xlabel('Frequency (f) in Hz'); ylabel('Amplitude'); title('Phase response of LPF');

% Difference equation:
load('ecg_awgn_fs_360.mat'); %Loads the workspace that has our signal as a variable of the structure/workspace
x=ecg_awgn;

y=zeros(1,(length(x)));

for n=2:length(x)
    y(n)= K*(x(n)+x(n-1))+alpha*y(n-1);
end

figure
subplot(2,1,1)
plot(x);axis tight; grid ON;
xlabel('Time (n)'); ylabel('Amplitude'); title('Original signal');

subplot(2,1,2)
plot(y);axis tight; grid ON;
xlabel('Time (n)'); ylabel('Amplitude'); title('Filtered signal');
sgtitle('Low Pass filter');
```

Result (After passing ECG signal):

</hr>

## P2: High Pass Filter:
Derivation of transfer function and Difference equation:
<p align="center">
  <img src="Pictures\WhatsApp Image 2022-04-03 at 12.21.04 PM.jpeg"> 
</p>

Code:
``` cpp
clc;
clear all;
close all;

% HPF:
w = 0:0.01:pi;
fs = 360;
f = w*fs/(2*pi);
x = exp(sqrt(-1)*w);

alpha = 1-2*pi/360;
K = (1+alpha)/2;
h = K*(x-1)./(x-alpha);

subplot(2,1,1)
plot(f,abs(h));axis tight; grid ON;
xlabel('Frequency (f) in Hz'); ylabel('Amplitude'); title('Magnitude response of HPF');

subplot(2,1,2)
plot(f,angle(h));axis tight; grid ON;
xlabel('Frequency (f) in Hz'); ylabel('Amplitude'); title('Phase response of HPF');

% Difference equation:
load('ecg_awgn_fs_360.mat'); %Loads the workspace that has our signal as a variable of the structure/workspace
x=ecg_awgn;

y=zeros(1,(length(x)));

for n=2:length(x)
    y(n)= alpha*y(n-1)+K*(x(n)-x(n-1));
end

figure
subplot(2,1,1)
plot(x);axis tight; grid ON;
xlabel('Time (n)'); ylabel('Amplitude'); title('Original signal');

subplot(2,1,2)
plot(y);axis tight; grid ON;
xlabel('Time (n)'); ylabel('Amplitude'); title('Filtered signal');
sgtitle('High Pass filter');
```

Result (After passing ECG signal):

</hr>

## P3: Band Pass Filter:
Derivation of transfer function and Difference equation:
<p align="center">
  <img src="Pictures\WhatsApp Image 2022-04-03 at 12.17.23 PM (1).jpeg"> 
</p>

Code:
``` cpp
clc;
clear all;
close all;

% BPF:
w = 0:0.01:pi;
fs = 360;
f = w*fs/(2*pi);
x = exp(sqrt(-1)*w);

r = 1-(14*pi/360);
theta=(13*pi/180); %radians
K=(1-r)*sqrt(1-2*r*cos(2*theta)+r^2)/(2*abs(sin(theta)));
h = K*(x.^2-1)./(x.^2-2*r*x*cos(theta)+r^2);
coeff_y1=2*r*cos(theta);
coeff_y2=r^2;

subplot(2,1,1)
plot(f,abs(h));axis tight; grid ON;
xlabel('Frequency (f) in Hz'); ylabel('Amplitude'); title('Magnitude response of BPF');

subplot(2,1,2)
plot(f,angle(h));axis tight; grid ON;
xlabel('Frequency (f) in Hz'); ylabel('Amplitude'); title('Phase response of BPF');

% Difference equation:
load('ecg_awgn_fs_360.mat'); %Loads the workspace that has our signal as a variable of the structure/workspace
x=ecg_awgn;

y=zeros(1,(length(x)));

for n=3:length(x)
    y(n)= 2*r*y(n-1)*cos(theta)-r^2*y(n-2)+K*(x(n)-x(n-2));
end

figure
subplot(2,1,1)
plot(x);axis tight; grid ON;
xlabel('Time (n)'); ylabel('Amplitude'); title('Original signal');

subplot(2,1,2)
plot(y);axis tight; grid ON;
xlabel('Time (n)'); ylabel('Amplitude'); title('Filtered signal');
sgtitle('Band Pass filter');
```

Result (After passing ECG signal):

</hr>

## P4: Band Stop Filter:
Derivation of transfer function and Difference equation:
<p align="center">
  <img src="Pictures\WhatsApp Image 2022-04-03 at 12.17.23 PM (2).jpeg"> 
</p>

Code:
``` cpp
clc;
clear all;
close all;

% BPF:
w = 0:0.01:pi;
fs = 360;
f = w*fs/(2*pi);
x = exp(sqrt(-1)*w);

r = 1-pi/90;
theta = (50*pi/180); %radians
K = (1-2*r*cos(theta)+r^2)/(2-2*cos(theta));
h = K*(x.^2-2*x*cos(theta)+1)./(x.^2-2*r*x*cos(theta)+r^2);
coeff_y1=2*r*cos(theta);
coeff_y2=r^2;

subplot(2,1,1)
plot(f,abs(h));axis tight; grid ON;
xlabel('Frequency (f) in Hz'); ylabel('Amplitude'); title('Magnitude response of BSF');

subplot(2,1,2)
plot(f,angle(h));axis tight; grid ON;
xlabel('Frequency (f) in Hz'); ylabel('Amplitude'); title('Phase response of BSF');

% Difference equation:
load('ecg_awgn_fs_360.mat'); %Loads the workspace that has our signal as a variable of the structure/workspace
x=ecg_awgn;

y=zeros(1,(length(x)));
y(1)=K*x(1);
y(2) = -K*2*cos(theta)*x(1)+K*x(2)+2*r*cos(theta)*y(1);

for n=3:length(x)
    y(n)= 2*r*y(n-1)*cos(theta)-r^2*y(n-2)+K*(x(n)-2*x(n-1)*cos(theta)+x(n-2));
end

figure
subplot(2,1,1)
plot(x);axis tight; grid ON;
xlabel('Time (n)'); ylabel('Amplitude'); title('Original signal');

subplot(2,1,2)
plot(y);axis tight; grid ON;
xlabel('Time (n)'); ylabel('Amplitude'); title('Filtered signal');
sgtitle('Band Pass filter');
```

Result (After passing ECG signal):

</hr>
