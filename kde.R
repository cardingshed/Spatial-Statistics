##############################################################
### Motivating Example - John Snow London cholera outbreak ###
##############################################################
# Datasets source: http://vincentarelbundock.github.io/Rdatasets/datasets.html
Snow.deaths <- read.csv("Snow.deaths.csv",header=T)
Snow.polygons <- read.csv("Snow.polygons.csv",header=T)
Snow.pumps <- read.csv("Snow.pumps.csv",header=T)
Snow.streets <- read.csv("Snow.streets.csv",header=T)
# Convert (x,y) coordinates to spatstat format
deaths <- ppp(Snow.deaths[,2], Snow.deaths[,3], c(5,20), c(5,20))
# KDE John Snow data
plot(density(deaths))


##################################################
### Spatial methods applied to pine trees data ###
##################################################
require(spatstat)
data(japanesepines, redwoodfull, cells)

#################################
### Kernel density estimation ###
#################################
par(pin=c(4,4))
plot(density(redwoodfull), main="")
plot(density(japanesepines), main="")
plot(density(cells), main="")