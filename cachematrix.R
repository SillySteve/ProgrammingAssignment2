## These are a setup of functions to cache a matrix
##  and then cache the inverse of the matrix

## makeCacheMatrix 
##    will take a matrix as an input and cache the 
##    matrix if it does not already exist
##    
##    paramters
##      x - matrix object
##      returns the cache matrix

makeCacheMatrix <- function(x = matrix()) {

  ## function set x in the calling envronment
  set <- function(y) {
      x <<- y
      cachem <<- y
  }

  
  ## set x in the calling envronment
  
  set(x)
  
  ## check to see if we already have a cached matrix
  ## and if it is indentical to the one we are passing now
  ##  if it us new, set it
  
  if (!is.null(cachem)  && !identical(x,cachem)) (
     cachem <<- x
    
  )
  return(cachem)
}
solve(a)

## cacheSolve 
##    will take a matrix as an input and return the inverse 
##    if wukk cache the result 
##    
##    paramters
##      x - matrix object
##      returns the cache matrix


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

  set <- function(y) {
    x <<- y
    cachex <<- y
  }
  
  
  ## set x in the calling envronment
  
  set(x)
  
  ## i the answer is already cache... just return it
  if (!is.null(cachex)  || !identical(x,cachex)) {
    
    cachex <<- solve(x, ...)%*%x
    
  } 
  
  return(cachex)
  
  
        
}
