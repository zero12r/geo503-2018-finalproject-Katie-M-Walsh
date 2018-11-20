library(raster)
library(sp)
library(rgdal)
library(ggplot2)
library(ggmap)
library(dplyr)
library(tidyr)
library(maps)
library(scales)
library(sf)
library(rnoaa)
library(maptools)
#install.packages("climdex.pcic")
#install.packages("zoo")
#install.packages("reshape2")
#install.packages("leaflet")
library(leaflet)

#install.packages("DT")
#install.packages("widgetframe")
library(DT)
library(widgetframe)
library(climdex.pcic)
library(zoo)
library(reshape2)
library(broom)
#install.packages("FedData")
library(FedData)


SNI <- st_read("Data/CattaraugusSNI.shp")
st_transform(st_geometry(SNI, st_crs(CRS=)))
#SNI.trans <- st_transform(SNI, st_crs(4326))
class(SNI)
SNI_sp = as(SNI, Class = "Spatial")
plot(SNI, max.plot = 10)
```




```{r, warning=F} 

library(DataScienceData)
lulcf=system.file("extdata", 
                  "appeears/MCD12Q1.051_aid0001.nc", 
                  package = "DataScienceData")
lulcf

lulc=stack(lulcf,varname="Land_Cover_Type_1")
plot(lulc)

NED <- get_ned(template=SNI_sp, label='CattCreek')


plot(NED)

datatable(NED)

crop_SNI <- crop(SNI_sp, NED, snap='near')
plot(crop_SNI)
# Results


```

```{r}

```

# Conclusions

What have you learned?  Are there any broader implications?
  
  # References
  
  
  