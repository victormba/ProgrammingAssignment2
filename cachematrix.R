##  Pair of functions that cache the inverse of a matrix.


## This function creates a special "matrix" object that can cache its inverse.
## Assomption: This fonction assume that the matrix supplied 'x'is always invertible.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  y <- solve(x)                         ## Computing the inverse of a square matrix
  m <<- y                               ## Cash the inverse of the matrix 'x'
  x                                     ## return the matrix
}



## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already 
## been calculated (and the matrix has not changed), then 
## cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
 
  if(!is.null(m) && m == solve(x)) {    ## verify if the inverse has already been calculated (and the matrix has not changed)
       message("getting matrix cached by makeCasheMatrix()")   ## if yes retrieve from the cache. 
       return(m)
     }
  y <- solve(x)                         ##Computes the inverse of the special "matrix" 'x'
  y                                     ## Return the calculated matrix that is the inverse of 'x'
}
