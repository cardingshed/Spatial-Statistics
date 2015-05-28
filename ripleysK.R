##################################################
### Spatial methods applied to pine trees data ###
##################################################
require(spatstat)
data(japanesepines, redwoodfull, cells)

#################################################
### Second order method - Ripley's K-function ###
#################################################
par(pin=c(2.5, 2.5))
plot(envelope(redwoodfull, Kest), main="Redwood", legend=F)
plot(envelope(japanesepines, Kest), main="Japanese", legend=F)
plot(envelope(cells, Kest), main="Cells", legend=F)

# Square root transformation for ease of interpretation
par(pin=c(2.5, 2.5))
plot(envelope(redwoodfull, Kest, transform=expression(sqrt(.)), global=TRUE), main="Redwood", legend=F)
plot(envelope(japanesepines, Kest, transform=expression(sqrt(.)), global=TRUE), main="Japanese", legend=F)
plot(envelope(cells, Kest, transform=expression(sqrt(.)), global=TRUE), main="Cells", legend=F)
