
clc
clear
close all

[NumPoly DenomPoly] = cheby1(3,0.5,2*pi*1e3, 'high', 's');
sys = tf(NumPoly,DenomPoly);
bode(sys,{2*pi*10,2*pi*10e3});
grid; % Right click on axis > Properties > Units > Hz
title('3^r^d order Chebyshev HP-filter, 0.5 dB');
% Alternative:
freq = logspace(1,4,2000);
om = 2*pi*freq;
jom = j*om;
H = polyval(NumPoly,jom)./polyval(DenomPoly,jom);
H_dB = 20*log10(abs(H));
%
semilogx(freq,H_dB);
grid;
xlabel('Frequency [Hz]');
ylabel('Magnitude [dB]');
title('3^r^d order Chebyshev HPfilter, 0.5 dB');
H_dB_100Hz = H_dB(find(freq>100,1))