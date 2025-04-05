clc; clear; close all;

% Step 1: Create a 100x100 occupancy map  
occupancyMapsample = zeros(100, 100);  

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

% Step 2: Invert the map so that 1 = free space, 0 = obstacles
freeSpaceMap = ~occupancyMapsample;

% Step 3: Compute the distance transform
distanceFromObstacle = bwdist(~freeSpaceMap);  % Euclidean distance to the nearest obstacle

% Step 4: Normalize the distance (0 to 1)
normalizedDistance = distanceFromObstacle / max(distanceFromObstacle(:));

% Step 5: Display the heatmap using a colormap (e.g., jet → blue to red)
figure;
imagesc(normalizedDistance);
colormap(jet);  % 'jet' goes from blue → green → yellow → red
colorbar;
axis equal;
title('Distance from Obstacles (Red = Near, Blue = Far)');
