## Put comments here that give an overall description of what your
## functions do

## This function creates a new cached matrix object.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## This function tries retrieving the inverse matrix from the cached object before starts calculating it 

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if (!is.null(inverse)) {
    message("getting cached data")
    return (inverse)
  }
  
  data <- x$get()
  inverse <- solve(data)
  x$setinverse(inverse)
  inverse
}
