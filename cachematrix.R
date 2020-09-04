## This function should create a matrix that is able to be inversed

makeCacheMatrix <- function(x = matrix()) {
  inv <-NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <-fucntion() {x}
  setInverse <-function(inverse) {inv <<-inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function should compute the inverse of the matrix

cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
    if(!is.null(inv)){
        message("getting cached data")
      return(inv)
    }
    mat <- x$get()
    inv <- solve(mat, ...)
    x$setInverse(inv)
    inv
}

