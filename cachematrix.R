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

# Creates some rows
a1 <- c(3, 2, 5) 
a2 <- c(2, 3, 2) 
a3 <- c(5, 2, 4)

# Creates a matrix using a1, a2 and a3 as rows
A <- rbind(a1, a2, a3) 
A

# Create the cached Matrix object
ca <- makeCacheMatrix(A)

# Calls solve to calculates the inverse matrix
ia <- cacheSolve(ca)
ia

# Calls the same method to retrieve the inverse matrix. Note that a message must be printed, indicating that
# cached
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

# Creates some rows
a1 <- c(3, 2, 5) 
a2 <- c(2, 3, 2) 
a3 <- c(5, 2, 4)

# Creates a matrix using a1, a2 and a3 as rows
A <- rbind(a1, a2, a3) 
A

# Create the cached Matrix object
ca <- makeCacheMatrix(A)

# Calls solve to calculates the inverse matrix
ia <- cacheSolve(ca)
ia

# Calls the same method to retrieve the inverse matrix. Note that a message must be printed, indicating that
# cached value was used
ia <- cacheSolve(ca)
ia

