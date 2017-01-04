makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
#will hold the inverse matrix value
  set.fn <- function(a){
    x <<- a
    inv <<- NULL
  }
  get.fn <- function() x
  set.Inv <- function(inv.mat) inv <<- inv.mat
  get.Inv <- function() inv
  }
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  inv
}
