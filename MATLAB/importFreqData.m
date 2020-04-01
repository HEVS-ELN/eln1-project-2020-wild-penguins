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

semilogx(freq, 20*log10(Amp2), '-x');
xlabel('Frequency [Hz]');
ylabel('Gain [dB]');