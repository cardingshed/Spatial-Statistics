##################################################
### Spatial methods applied to pine trees data ###
##################################################
require(spatstat)
data(japanesepines, redwoodfull, cells)

################################################
### First order method - nearest neighbour G ###
################################################
# Gest function
# 95% confidence intervals simualted by Monte Carlo methods (envelope)
par(pin=c(2.5, 2.5))
plot(envelope(redwoodfull, Gest, correction="best"), main="Redwood", legend=F)
plot(envelope(japanesepines, Gest, correction="best"), main="Japanese", legend=F)
plot(envelope(cells, Gest, correction="best"), main="Cells", legend=F)

##########################################
### First order method - empty space F ###
##########################################
# Fest function
# 95% confidence intervals simualted by Monte Carlo methods (envelope)
par(pin=c(2.5, 2.5))
plot(envelope(redwoodfull, Fest), main="Redwood", legend=F)
plot(envelope(japanesepines, Fest), main="Japanese", legend=F)
plot(envelope(cells, Fest), main="Cells", legend=F)