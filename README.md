# Caching the Inverse of a Matrix in R

This project provides two R functions to efficiently compute and cache the inverse of a matrix, avoiding redundant calculations.
## 1️⃣ makeCacheMatrix()

Creates a special object that stores a matrix and caches its inverse.
- Usage:
``` 
cache_matrix <- makeCacheMatrix(matrix(c(2, 1, 1, 3), 2, 2))
cache_matrix$get()        # Returns the matrix
cache_matrix$getinverse() # NULL (inverse not yet computed)
```
## 2️⃣ cacheSolve()

Computes the inverse of the matrix and caches it. If already cached, retrieves it instead of recalculating.
Usage:
``` 
inv1 <- cacheSolve(cache_matrix)  # Computes inverse
inv2 <- cacheSolve(cache_matrix)  # Retrieves cached inverse
```
## ✅ Why use it?
- Efficient for large matrices
- Prevents redundant calculations
- Useful in statistical & ML applications
