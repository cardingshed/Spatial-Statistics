example.sim <- function(size,thresh,...){
    heights <- rnorm(size)
    exc <- sort(heights[heights > thresh] - thresh)
    exc
}
