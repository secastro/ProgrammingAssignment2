## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function to create a special matrix in R that can cache it's own
## inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function
## Calculates the inverse of a matrix and keeps a copy. If a copy
## exists, that value is returned instead of being calculated again 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    i <- x$getinv()
    if (!is.null(i)) {
        message("Returning cached inverse")
        return(i)
    }
    m <- x$get()
    i <- solve(m, ...)
    x$setinv(i)
    i
}
