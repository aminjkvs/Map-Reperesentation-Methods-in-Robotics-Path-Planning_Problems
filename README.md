# All Ways To Represent a Map in Robotics Applications

# 📍 1. Representing a Map Using an Occupancy Grid in MATLAB  

## 🔹 Overview  
This repository demonstrates how to represent a **robotic map** in MATLAB using an **occupancy grid**. The occupancy grid is a **binary map**, where:  
- **0 (white)** represents free space.  
- **1 (black)** represents obstacles.  

## 🔹 How It Works  
We define a **100x100 occupancy map**, manually adding obstacles to simulate walls and barriers. This map can be used for **robotic navigation, path planning, and localization**. 

![ocupancyMapRepresentationSample](https://github.com/user-attachments/assets/c405c873-0f97-42b2-a01c-1d2c1baccd4e)

# 📍 2. Representing a Map Using Voronoi in MATLAB  

## 🔹 Overview  
This repository demonstrates how to represent a **robotic map** in MATLAB using a **Voronoi diagram**. The Voronoi diagram partitions the map into regions based on the **nearest obstacles**, making it useful for **path planning and navigation**.  

## 🔹 How It Works  
1. We create a **100x100 occupancy map** with obstacles.  
2. We extract the **free space points**.  
3. We generate the **Voronoi diagram**, ensuring that Voronoi edges do not pass through obstacles.

![voronoiMapRepresentationSample](https://github.com/user-attachments/assets/28236ba0-460c-4011-9139-d09dec0eae80)

# 📍 3. Skeletonizing Occupancy Map to Generate Semi-Voronoi Map

## 🔹 Overview  
This repository demonstrates how to **combine an occupancy grid** and **a Voronoi diagram** in MATLAB to enhance **robotic path planning**.  

## 🔹 How It Works  
1. We create a **100x100 occupancy grid** with obstacles.  
2. We extract **free space points** and apply **skeletonization** to remove unnecessary paths.  

![OccupancyPlusVoronoiMapRepresentation](https://github.com/user-attachments/assets/cc699ec5-dcb2-4b15-854e-f0e921fcff20)

# 🌡️ 4. Creating a Heat Map from an Occupancy Map in MATLAB

## 🔹 Overview  
This example shows how to generate a **heat map** from an **occupancy grid** in MATLAB. A heat map visually enhances the representation of an occupancy map by assigning a color scale to the cell values, which can help identify regions of interest, free space, and obstacle density.

## 🔹 Goal  
Visualize the **occupancy values** as a **color-scaled heat map**, where:
- **Cool colors (blue)** = free space
- **Warm colors (red)** = occupied or high-risk areas

![distanceBasedHeatMap](https://github.com/user-attachments/assets/f1a3ed73-f90d-4e48-bf53-c1132035922c)
