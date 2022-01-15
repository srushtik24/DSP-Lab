# **WEEK -02: MOVING AVERAGE FILTER AND DERIVATIVE BASED OPERATORS:**

## P1: MOVING AVERAGE FILTER:
* The moving average filter is a simple Low Pass FIR (Finite Impulse Response) filter commonly used for smoothing an array of sampled data/ signal. 
* It takes M samples of input at a time and takes the average of those M-samples and produces a single output point. As the filter length increases (the parameter M) the smoothness of the output increases, whereas the sharp transitions in the data are made increasingly blunt. 
* This implies that this filter has excellent time domain response but a poor frequency response.
<hr />
1. a, b, c:
<img src="Equations\abc.PNG">
<hr />

1. d, e,f:
<img src="Equations\de.PNG">

Code (d,f):

Results(d,f respectively):

<img src="Results\P1_d.PNG">
<img src="Results\P1_f.PNG">
<hr />

1. g:
Code:

Result:
<img src="Results\P1_g.PNG">
<hr />

1. h:
Code (ECG):

Result (ECG):
<img src="Results\P1_h_ecg.PNG">

Code (PPG):

Result (PPG):
<img src="Results\P1_h_ppg.PNG">

## Observation:
1. As the value of M increases, the smoothness in the output decreases. Noise is high frequency but a Moving Average filter is a simple Low pass filter. This does not mean we can take any arbitrary value of M because we might end up losing data. 
2. As M increases, the cut-off frequency decreases.
3. M order MA filter has M-1 poles and M-1 zeros.

<hr />

## P2: DERIVATIVE FILTERS:

2. a, b:
<img src="Equations\2ab.PNG">
<hr />

2. c:
<img src="Equations\2c.PNG">
<hr />

2. d:
<img src="Equations\2d.PNG">
Results: 
<img src="Results\P2_d_1.PNG">
<img src="Results\P2_d_2.PNG">
<hr />

2. e:
<img src="Equations\2e.PNG">
<hr />

2. f:
Code: 

Result:
<img src="Results\P2_f.PNG">
<hr />

2. g:
Code (ECG): 

Result (ECG):
<img src="Results\P2_g_ecg.PNG">

Code (PPG): 

Result (PPG):
<img src="Results\P2_g_ppg.PNG">
<hr />

## Observation:
1. Unlike Moving Average filters, derivative based operators/filters are High Pass filters, they amplify high frequency componenets and attenuate low frequency componenets.
2. The difference between First order and Second order Derivate filter is the fact that the latter is a better HPF (i.e, attenuates lower frequencies and amplifies higher frequencies more then the former).
3. All have a linear phase and there is no phase distortion.
