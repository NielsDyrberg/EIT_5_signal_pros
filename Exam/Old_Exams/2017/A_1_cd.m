

clear
close all
clc

n = 4; % order
Rp = 1; % ripple
Wp = [900 1000]/2000; % Cut of
ftype = 'bandpass'; %type

[z,p,k] = cheby1(n,Rp,Wp,ftype);
sos = zp2sos(z,p,k);
hfvt = fvtool(sos,'FrequencyScale','log');


[A,B,C,D] = cheby1(n,Rp,Wp);
d = designfilt('bandpassiir','FilterOrder',n, 'PassbandFrequency1',900,'PassbandFrequency2',1000, 'PassbandRipple',Rp,'SampleRate',2000);

sos = ss2sos(A,B,C,D);
fvt = fvtool(sos,d,'Fs',2000);
legend(fvt,'cheby1','designfilt')