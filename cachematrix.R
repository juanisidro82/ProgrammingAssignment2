## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    matrixinverse <- NULL
    set <- function(y) {
        x <<- y
        matrixinverse <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) matrixinverse <<- inverse
    getinverse <- function()  matrixinverse
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    matrixinverse <- x$getinverse()
    if(!is.null(matrixinverse)) {
        message("getting cached data")
        return(matrixinverse)
    }
    matrixoriginal <- x$get()
    matrixinverse <- solve(matrixoriginal)
    x$setinverse(matrixinverse)
    matrixinverse
}
