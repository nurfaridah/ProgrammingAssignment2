## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invrse <- NULL
  set <- function(y){
    x <<- y
    invrse <<- NULL
  }
  get <- function() x
  
  setInverse <- function(solveMat)  invrse <<- solveMat
  getInverse <- function() invrse
  
  list(set = set, 
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invrse <- x$getInverse()
  
  if(!is.null(invrse)){
    message("getting cached data")
    return(invrse)
  }
  data <- x$get()
  invrse <- solve(data, ...)
  x$setInverse(invrse)
  invrse    
}
