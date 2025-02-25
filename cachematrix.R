# This function creates a special "matrix" object that can cache its inverse.
#This function return a list of function that can be used to set the value of the matrix
#get the value of the matrix,
#set the value of the inverse of the matrix and get the value of the inverse of the matrix
MakeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  
  
  set <- function(y) {
    x <<- y    
    inv <<- NULL  
  }
  
  # Function to get the matrix
  get <- function() x
  
  # Function to set the inverse
  setinverse <- function(inverse) inv <<- inverse
  
  # Function to get the inverse
  getinverse <- function() inv
  
  # Return a list with the above functions
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function
# This function computes the inverse of the special "matrix" returned by MakeCacheMatrix fucntion above.
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()  # Get the inverse from the cache
  
  # If the inverse is already cached, return it
  if (!is.null(inv)) {
    message("Getting cached inverse")
    return(inv)
  }
  
  # Otherwise, calculate the inverse
  mat <- x$get()  # Get the matrix
  inv <- solve(mat, ...)  # Compute the inverse
  x$setinverse(inv)  # Store the inverse in the cache
  
  return(inv)  # Return the inverse
}
