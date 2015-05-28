##################################################
### Spatial methods applied to pine trees data ###
##################################################
require(spatstat)
data(japanesepines, redwoodfull, cells)

#######################
### Quadrant method ###
#######################
par(pin=c(4.5,4.5))
plot(redwoodfull, pch=3, pin=8, main="Redwood Trees")
plot(quadratcount(redwoodfull, nx=3, ny=3), add=T, col="red")
# Test by chi-sq goodness of fit - result highly dependent on pattern of division
quadrat.test(redwoodfull, nx=3, ny=3)
quadrat.test(redwoodfull, nx=2, ny=2)