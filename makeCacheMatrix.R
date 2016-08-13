## Obtaining the Inverse of a Matrix:
## You will find a two functions that are used to create an object that 
## is able to store a matrix and caches its inverse.

## The makeCacheFunction creates a "matrix" object that caches it's inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}