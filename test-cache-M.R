## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Still need to add proper comments.  I'm trying this out in lieu of Cloning ...
## because that just does not work for me.  I have no idea why and I do not
## have the tiome to figure it out.  Okay.  Forgive me, I'm really not a geek.
## I'm a classical scientist & engineer.  We do not like "futzing" around, if 
## there's a simpler, cleaner way of getting it done.

makeCacheMatrix <- function(x = matrix()) {
  mI <- NULL
  set <- function(y) {
    x <<- y
    mI <<- NULL
  }
  get <- function() x
  setInv <- function(solve) mI <<- solve
  getInv <- function() mI
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  mI <- x$getInv()
  if(!is.null(mI)) {
    message("getting cached Inverse Matrix")
    return(mI)
  }
  data <- x$get()
  mI <- solve(data, ...)
  x$setInv(mI)
  mI
}
