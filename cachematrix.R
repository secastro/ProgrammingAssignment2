## makeCacheMatrix(x = matrix())
## Creates a special matrix in R that can cache it's own inverse

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

## cacheSolve(x, ...)
## Calculates the inverse of a matrix created with
## makeCacheMatrix and keeps a copy. Upon further calls, the cached
## inverse is returned 

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
