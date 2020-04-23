path = 'C:\Users\jeann\Desktop\ElnProf\ELN1Projects2020\data\1_WildPenguins\';
freq = [];
V1=[];
V2=[];
for k=0:4
file = [path 'Humidity' num2str(k) '.csv'];
data = readmatrix(file, 'Range', 2);

time(:,k+1) = data(:,1);
Amp2(:,k+1) = data(:,3);


end

plot(time, Amp2);
