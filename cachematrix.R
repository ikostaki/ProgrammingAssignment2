## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        get <- function() x
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        getinv <- function() inv
        setinv <- function(inverse) {
                inv <<- inverse
        }
        return(list(
                set = set,
                get = get,
                getinverse = getinv,
                setinverse = setinv
        ))

}


## The function that caches the computed values or the inputs. In the second line we create the variable inv and set it by default to NULL.
cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()
        if (!is.null(inverse)) {
                return(inverse)
        }
        m <- solve(x$get())
        x$setinverse(m)
        #Returns matrix inverse of 'x'
}
