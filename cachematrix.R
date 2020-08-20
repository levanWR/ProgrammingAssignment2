### create matrix, calculate inverse and cache it, if cached return cached data

## functions creating list of length 4 containing value and inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setSolve<-function(solve) m<<- solve
  getSolve<-function() m
  list(set=set, get=get,
       setSolve=setSolve,
       getSolve=getSolve)
}


## functions calculating inverse of squared matrix and caches it in x, if it is cached function takes cached value

cacheSolve <- function(x, ...) {
  m<-x$getSolve()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data, ...)
  x$setSolve(m)
  m
         
}
