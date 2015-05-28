##################################################
### Spatial methods applied to pine trees data ###
##################################################
require(spatstat)
data(japanesepines, redwoodfull, cells)

#################################################
### Second order method - Ripley's K-function ###
#################################################
par(pin=c(2.5, 2.5))
plot(envelope(redwoodfull, Kest), main="Redwood Pines", legend=F)
plot(envelope(japanesepines, Kest), main="Japanese Pines", legend=F)
plot(envelope(cells, Kest), main="Cells Pines", legend=F)