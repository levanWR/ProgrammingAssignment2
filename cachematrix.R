## overall my functions takes matrix as argument, calculates inverse of the squared matrix and caches it. if it is already chached returns cached data

##this function takes matrix as argument and creates list of four 
makeCacheMatrix<-function(x=matrix()){
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

##this function caculates inverse and if its already chached returs cached value
cacheSolve<- function(x, ...){
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
