library(ggmap)
library(ggplot2)
library(raster)
library(rgeos)
library(maptools)
library(rgdal)
library(scales)

result<-read.csv("20th.csv", header=T, as.is=T)

korea <- getData('GADM', country='kor', level=2)
korea <- shapefile('TL_SCCO_SIG.shp') 

korea <- fortify(korea, region='SIG_CD')
korea <- merge(korea, result, by='id')


# Map multiple colors
mean<-mean(result$Yoon)
ggplot(data=korea) + geom_polygon(aes(x=long, y=lat, group=group, fill=Yoon)) +
  coord_quickmap(xlim = c(850000, 1200000), ylim = c(1450000, 2100000)) +
  theme_void() + scale_fill_gradient2(low='#004ea9', mid = "white", high='red', midpoint=mean, name='Yoon Vote Share')
  