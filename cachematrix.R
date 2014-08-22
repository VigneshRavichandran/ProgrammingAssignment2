## makeCacheMatrix computes the Inverse of the matrix and stores it into an object in another environment
## cacheSolve first checks whether the inverse for the matrix is in cache.
## If it there it displays the cache else it computes and stores in cache. 


    ## description of makeCacheMatrix
##First makeCacheMatrix function gets an input matrix.
## The setmatrix method computes the inverse of this matrix
## and stores into an object m in another environment using <<- operator. 
## get function returns the input matrix and getmatrix function
## returns the inverse matrix
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

 m<-NULL

get<-function() { x }
setmatrix<- function() {m <<- solve(x)}
getmatrix<-function() {m}
list (get=get,setmatrix=setmatrix,getmatrix=getmatrix)

}



## checks whether the cache is available or else computes new inverse

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m<-x$getmatrix()
    if(!is.null(m)){
      print("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix)
    x$setmatrix()
    m
}


