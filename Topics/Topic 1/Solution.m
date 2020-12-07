
clear all
close all
clc

%% 1. A Butterworth low-pass filter is wanted, 
%with the two (standard) requirements:
%20 ·log|H(j*1 rad/s)| = -3 dB
%20 ·log|H(j0)| = 0 dB

% for order n
disp('Pole location has the formula, for location around unit circle')

disp('For order 4')
[dummy pole4 A0] = buttap(4)

disp('for order 5')
[dummy pole5 A0] = buttap(5)

disp('Find an expression for the transfer function from the pole locations for n = 4.')
denom_coeff4 = poly(pole4)


