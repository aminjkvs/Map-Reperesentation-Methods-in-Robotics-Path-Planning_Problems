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

% Convert occupancy map (invert for skeletonization)
occupancyMapsample = ~occupancyMapsample; % Now 1 = free space, 0 = obstacle

% Step 2: Compute skeleton
BW3 = bwmorph(occupancyMapsample, 'skel', Inf);

% Step 3: Identify branch points
branchPoints = bwmorph(BW3, 'branchpoints');

% Step 4: Extract skeleton and branch point coordinates
[skeletonY, skeletonX] = find(BW3);       % Get skeleton pixels
[branchY, branchX] = find(branchPoints);  % Get branch points

% Step 5: Display occupancy map with skeleton and branch points
figure;
imshow(occupancyMapsample, 'InitialMagnification', 'fit'); % Show occupancy map
colormap(gray);
axis on;
title('Skeleton and Branch Points on Occupancy Map');
hold on;

% Step 6: Overlay skeleton pixels as red dots
plot(skeletonX, skeletonY, 'r.', 'MarkerSize', 7); % Red dots for skeleton

% Step 7: Overlay branch points as blue dots
plot(branchX, branchY, 'b.', 'MarkerSize', 15); % Blue dots for branch points

hold off;
