# **WEEK -04: FUNCTION OF DFT AND IDFT:**

## Aim: 
The application of DFT for determining frequency components (in particularly determining dominant frequency components, estimation fundamental components and also harmonics and also unwanted signal filtering) and removal of 

## P1: DFT-
In mathematics, the discrete Fourier transform (DFT) converts a finite sequence of equally-spaced samples of a function into a same-length sequence of equally-spaced samples of the discrete-time Fourier transform (DTFT), which is a complex-valued function of frequency. The interval at which the DTFT is sampled is the reciprocal of the duration of the input sequence.

Formula-
<p align="center">
  <img src="Pictures\dft_formula.PNG"> 
</p>

Code-
<p align="center">
  <img src="Pictures\dft_code.PNG"> 
</p>
<hr/>

## P2: IDFT-
A time domain signal will usually consist of a set of real values, where each value has an associated time (e.g., the signal consists of a time series). The Fourier transform maps the time series into a a frequency domain series, where each value is a complex number that is associated with a given frequency. The inverse Fourier transform takes the frequency series of complex values and maps them back into the original time series. Assuming that the original time series consisted of real values, the result of the IDFT will be complex numbers where the imaginary part is zero.

Formula-
<p align="center">
  <img src="Pictures\idft_formula.PNG"> 
</p>

Code-
<p align="center">
  <img src="Pictures\idft_code.PNG"> 
</p>
<hr/>

## P1: AMPLITUDE AND PHASE SPECTRUM-
Formula-
<p align="center">
  <img src="Pictures\amp_ph_formula.PNG"> 
</p>
Code-
<p align="center">
  <img src="Pictures\amp_ph_code.PNG"> 
</p>
Result- For a test signal- x=sin(2*pi*500*t)+sin(2*pi*1000*t)+sin(2*pi*20*t);
<p align="center">
  <img src="Pictures\testsig.PNG"> 
</p>
<hr/>

## Results for various PPG AND ECG Signals:

Main Driver code-
<p align="center">
  <img src="Pictures\maincode1.PNG"> 
</p>
<p align="center">
  <img src="Pictures\maincode2.PNG"> 
</p>

1. ppg_0p25
<p align="center">
  <img src="Pictures\ppg0p25.PNG"> 
</p>

2. ppg_0p10
<p align="center">
  <img src="Pictures\ppg0p10.PNG"> 
</p>

3. ppg_0p05
<p align="center">
  <img src="Pictures\ppg0p05.PNG"> 
</p>

4. ecg_0p25
<p align="center">
  <img src="Pictures\ecg0p25.PNG"> 
</p>

5. ecg_0p10
<p align="center">
  <img src="Pictures\ecg0p10.PNG"> 
</p>

6. ecg_0p05
<p align="center">
  <img src="Pictures\ecg0p05.PNG"> 
</p>
<hr/>

## Discussion:
a. The DFT of a real-valued discrete-time signal has a special symmetry, in which the real part of the transform values are DFT even symmetric and the imaginary part is DFT odd symmetric. 
b. We were asked to remove frequency components from around 50Hz signal(noise) with a margin of 2Hz hence we silenced the 48Hz-52Hz components but considering the symmetry, we also removed components that were around 125-50Hz (73-77).
c. The only difference between the 3 ppg signals or the 3 ecg signals is their amplitudes.

## Conclusion:
We succesfully created function blocks for each part and completed the assignment. We observed the results for the given six signals and learned how to remove unwanted signals and noises and saw completely smoothened signals in output.
