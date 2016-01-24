## Firstly, I create a list of functiong to set the value of the matrix, set the value of inverse and get the value of matrix and inverse respectively.

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL
    set<-function(y){
    x<<-y
    inv<<-NULL
    }
    get<-function() x
    setinverse<- function(inverse) inv<<- inverse
    getinverse<- function() inv
    list (set = set, get= get,
          setinverse=setinverse,
          getinverse=getinverse)
}

## Next, I use the function calculates the inverse of the special "matrix" created by makeCachMatrix above. If the inverse has already been calculated, then it should get the inverse from the cache
cacheSolve<- function(x, ...){
  ## get a matrix that is the inverse of x
  inv<- x$getinverse()
  if(!is.null(inv)){
    message ("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(date,...)
  x$setinverse(inv)
  inv
  ## return a matrix that is the inverse of x
}
