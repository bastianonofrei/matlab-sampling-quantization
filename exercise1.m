
%amplitude 1 & 2

t=0:0.001:1

Amp1=0.5
Amp2=0.2

%phase shifts 

theta1=0
theta2= pi/3

%frequencies

freq1=50
freq2=230
%Analogous signals

signal=Amp1*sin(2*pi*freq1*t+theta1)+Amp2*sin(2*pi*freq2*t+theta2)



%plotting continuous time signal

figure

plot(t,signal,'LineWidth',1)
title('Analogue signal ')


%number of samples

n=0:1:1024

%sampling frequency

fs=8000
%sampling time
ts=1/fs


%sampled signals

sampledSignal=Amp1*sin(2*pi*freq1*n/fs)+Amp2*sin(2*pi*freq2*n/fs)
figure
stem(n,sampledSignal,'LineWidth',0.1)
title('Digital signal ')

% exercise2 --->
Amax=0.7

%8bit quantized version of our signal
quant8bit=quantBits(sampledSignal,8,Amax)
%err= original sampled signal - quantized version
quantErr8=sampledSignal-quant8bit

%16bit quantized version of our signal

quant16bit=quantBits(sampledSignal,16,Amax)
quantErr16=sampledSignal-quant16bit



