## overall my functions take matrix as an argument, calculates inverse of the squared matrix and caches it. if it is already cached returns cached data.

##this function takes matrix as an argument and creates list of four 
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

##this function takes matrix created above as an argument, if inverse already cached returs cached value otherwise caculates inverse and caches it in the list.
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
