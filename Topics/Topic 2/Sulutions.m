

syms n epsilon Cn w

%Cn == cosh(n*acosh(w));

%epsilon^2*Cn^2(w3db)==1;


eq = sqrt(1/epsilon^2)==cosh(n*acosh(w));

pretty(isolate(eq,w))

%w3db == cosh(acosh((1/epsilon^2)^(1/2))/n)

ep = sqrt(10^(0.5/10)-1)

wx = cosh(acosh((1/ep^2)^(1/2))/4)


clear

ripple_pass = 0.5;
ripple_bandw = 20000;
stop_band = 