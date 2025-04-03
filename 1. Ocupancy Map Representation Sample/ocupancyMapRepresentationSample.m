clc; clear; close all;

% Step 1: Create a 100x100 occupancy map  
occupancyMapsample = zeros(100, 100); % Empty map  

% Adding obstacles (1 = obstacle, 0 = free space)
occupancyMapsample(1:100, 95:100) = 1;
occupancyMapsample(1:100, 1:5) = 1;
occupancyMapsample(1:5, 1:100) = 1;
occupancyMapsample(95:100, 1:100) = 1;

occupancyMapsample(5:40, 15:20) = 1;
occupancyMapsample(60:95, 15:20) = 1;
occupancyMapsample(5:80, 30:35) = 1;
occupancyMapsample(20:25, 50:95) = 1;
occupancyMapsample(40:95, 50:55) = 1;
occupancyMapsample(60:80, 70:80) = 1;


figure;
imshow(1-flipud(occupancyMapsample), 'InitialMagnification', 'fit');
title('occupancyMapsample');
mapSample1 = occupancyMap(flipud(occupancyMapsample),1);