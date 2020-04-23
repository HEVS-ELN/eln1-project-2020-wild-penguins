path = 'C:\Users\jeann\OneDrive\Documents\ELN\Wild Penguins\eln1-project-2020-wild-penguins\data\ConductiveProbe\';
freq = [];
V1=[];
V2=[];
for k=0:4
file = [path 'R10k_' num2str(k) '.csv'];
data = readmatrix(file, 'Range', 2);

freq(:,k+1) = data(:,1);
V2(:,k+1) = 10.^(data(:,3)/20).*exp(1j*data(:,4)*pi/180);
Amp2(:,k+1) = 10.^(data(:,3)/20);
Phase2(:,k+1) = data(:,4)*pi/180;

end
%PLOT Cpr et Rpr en fonction de la fréquence et de R1
R1=10000;
%On estime que le gain Amp1 est égal à 1
G = Amp2;

Rpr = (G.*R1)./(abs(cos(Phase2))-G);
Cpr = -(tan(Phase2).*(R1+Rpr))./(2.*pi.*freq.*Rpr.*R1);

figure();
plot(freq, Rpr, '-');
legend('Rpr0', 'Rpr1', 'Rpr2', 'Rpr3', 'Rpr4');
grid
figure();
plot(freq, Cpr, '-');
legend('Cpr0', 'Cpr1', 'Cpr2', 'Cpr3', 'Cpr4');
grid

figure();
semilogx(freq, 20*log10(Amp2), '-x');
xlabel('Frequency [Hz]');
ylabel('Gain [dB]');
grid
figure();
semilogx(freq, (Phase2*360/(2*pi)), '-x');
xlabel('Frequency [Hz]');
ylabel('Gain [dB]');
grid