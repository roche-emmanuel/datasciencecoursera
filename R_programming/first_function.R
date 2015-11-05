add2 <- function(x,y) {
  x+y
}

above10 <- function(x) {
  use <- x>10
  x[use]
}

above <- function(x,val=10) {
  use <- x>val
  x[use]
}

columnMean <- function(x, removeNA=TRUE) {
  nc <- ncol(x)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(x[,i],na.rm=removeNA)
  }
  means
}

# Test of closure implementation:
getClosure <- function(val) {
  offset <- val*2
  function(x) {
    x+offset
  }
}


f <- function(x) {
  g <- function(y) {
    y+z
  }
  z <- 4
  x+g(x)
}
