#This code is to combine two DEM tiles to be a single 
#spatial file for analysis and trim to a buffered watershed area
#Written by AEB 12/17/25

library(terra)
library(sf)
library(here)
library(ggplot2)

#load GeoTiffs they are in NAD83
tif1 <- rast(here("SMB_files", "Spatial", "USGS_13_n38w080_20211229.tif"))
tif2 <- rast(here("SMB_files", "Spatial", "USGS_13_n38w081_20230816.tif"))

#mosaic GeoTiffs to single SpatRaster
comb <- mosaic(tif1, tif2, fun="mean", filename= here("SMB_files", "Spatial", "combined_tiff.tif"), overwrite = TRUE)

#import shapefile of watershed in NAD83
smb_ws <- st_read(here("SMB_files", "Spatial", "SMB_watershed", "DEM_SMB_ws.shp"))

#create a shapefile for buffered watershed area
smb_ws_buffer <- st_buffer(smb_ws, 50) #50 m buffer? 

#plot to visualize results
ggplot() +
  geom_sf(data = smb_ws, fill = NA, color = "blue", size = 1) +
  geom_sf(data = smb_ws_buffer, fill = NA, color = "red", size = 1) +
  theme_minimal()

#Trim combined tiff by buffered watershed
masked <- mask(comb, mask = smb_ws_buffer)

#convert to NAD 1983 UM Zone 17N
UTM_masked <- project(masked, "EPSG:26917", filename = here("SMB_files", "Spatial", "DEM_trimmed_UTM.tif"), overwrite = TRUE)
