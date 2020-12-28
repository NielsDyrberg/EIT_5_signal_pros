
close all
clear

[NumPoly DenomPoly] = butter(4,2*pi*[10 15]*1e3, 'bandpass', 's');
sys = tf(NumPoly,DenomPoly);
bode(sys,{pi*2e3, pi*2e5}); % Right click on axis > Properties > Units > Hz
title('4^t^h order Butterworth BP-filter');
grid;
% ALTERNATIVE:
% [NumPoly DenomPoly] = butter(4,2*pi*[10 15]*1e3,'bandpass','s');
% freq = logspace(2,5,20000);
% om = 2*pi*freq;
% jom = j*om;
% H = polyval(NumPoly,jom)./polyval(DenomPoly,jom);
% H_dB = 20*log10(abs(H));
%
% semilogx(freq,H_dB);
% grid;
% xlabel('Frequency [Hz]');
% ylabel('Magnitude [dB]');
% title('4^t^h order Butterworth BPfilter');
% H_dB_1kHz = H_dB(find(freq>1000,1))
% H_dB_20kHz = H_dB(find(freq>20000,1))
% set(gca,'Ylim',[-150 0]);