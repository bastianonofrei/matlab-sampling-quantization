%sampling frequence

fs=8000
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

signal1=Amp1*sin(2*pi*freq1*t+theta1)
signal2=Amp2*sin(2*pi*freq2*t+theta2)


%plotting continuous time signals

figure
subplot(2,1,1)
plot(t,signal1,'LineWidth',3)
title('Analogue signal 1')
subplot(2,1,2)
plot(t,signal2,'LineWidth',0.2)
title('Analogue signal 2')


