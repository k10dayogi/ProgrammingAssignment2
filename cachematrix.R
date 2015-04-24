## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  z=NULL #clear any existing value of z
  z<<-x  #put z in the global environment for checking later.
  y<<-solve(x) #caching the value of solve(x) for use later.
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  if(identical(x,z)==TRUE) { #If x==z, then makeCachematrix made the inverse already.
    print("Retrieving cached data...") #So users know when the cache is accessed.
    print(y) #Since makeCachematrix already made the inverse, just pull it from cache.
  } else { #if makeCachematrix hasn't made the matrix, make it now.
    y<-solve(x)
    print(y)
  }
}
