#Transforming CRS in R
#Written by AEB 12/3/25
#Based on tutorial https://uw-madison-datascience.github.io/r-raster-vector-geospatial/09-vector-when-data-dont-line-up-crs/

# load spatial data packages
library(sf)
library(ggplot2)
library(here)

# set working directory to data folder
# setwd("pathToDirHere")

# Import the shapefile data into R
SMB_watershed <- st_read(here("SMB_files", "Spatial", "SMB_watershed", "globalwatershed.shp"))

#ID current projection
st_crs(SMB_watershed)

#Reporject CRS for different uses
#To NAD83 to match DEM data
DEM_SMB_ws <- st_transform(SMB_watershed, crs = 4269)

#To UTM Zone 17N (RHESSys preferred)
UTM_SMB_ws <- st_transform(SMB_watershed, crs = 26917)

#save transformed shapefiles
st_write(DEM_SMB_ws, here("SMB_files", "Spatial", "SMB_watershed", "DEM_SMB_ws.shp"))
st_write(UTM_SMB_ws, here("SMB_files", "Spatial", "SMB_watershed","UTM_SMB_ws.shp"))
