fc = 200;

f = (fc/100:fc/1000:fc*100)';
w = 2 * pi * f;
s = 1j * w;
phi=arctan(-w*Cpr*((R1*Rpr)/R1+Rpr));
H = (Rpr/(Rpr*R1))*(1/(1+s*Cpr*((R1*Rpr)/(R1+Rpr))));
semilogx(f, 20*log10(abs(H1)), '-x');
xlabel('Frequency [Hz]');