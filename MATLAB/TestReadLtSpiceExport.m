
% Load the data
data = load('C:\Users\jeann\OneDrive\Documents\ELN\Wild Penguins\eln1-project-2020-wild-penguins\Simu_probe.txt');
% separate the data columns, just to make the code clear
V0 = data(:,2); % Column 1 is Latitude
V1 = data(:,3); % Column 2 is Longitude
V2 = data(:,4); % Column 3 is Temperature
V3 = data(:,5);
V4 = data(:,6);
VIN = data(:,7);
time = data(:,1);
figure();
plot(time, V0);
hold on
plot(time, V1);
plot(time, V2);
plot(time, V3);
plot(time, V4);
plot(time, VIN);
grid

figure();
tstep = 0:20e-6:1e-3;
vq1 = interp1(time, V1, tstep);
vq2 = interp1(time, V2, tstep);
vq3 = interp1(time, V3, tstep);
vq4 = interp1(time, V4, tstep);
vqIN = interp1(time, VIN, tstep);
plot(time,V1,tstep,vq1,'*');
hold on;
plot(time,V2,tstep,vq2,'*');
plot(time,V3,tstep,vq3,'*');
plot(time,V4,tstep,vq4,'*');
plot(time,VIN);
grid