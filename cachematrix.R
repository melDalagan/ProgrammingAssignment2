## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Caching the Inverse of a Matrix:
## Below are two functions used to create a special object that stores a matrix
## and caches its inverse

## makeCacheMatrix is a function that creates a "matrix" object and cache 
## its inverse

makeCacheMatrix <- function(a = matrix()) 
{     b <- NULL
      setmat <- function(b)
      {     a <<- b
            b <<- NULL
      }
      getmat <- function() a
      setInverse <- function(inverse) b <<- inverse
      getInverse <- function() b
      list(setmat = setmat, 
           getmat = getmat, 
           setInverse = setInverse, 
           getInverse = getInverse)

}


## Write a short comment describing this function

## This function calculates the inverse of the matrix created by 
## makeCacheMatrix. If the inverse of the said matrix has already 
## been calculated, then it will retrived the inverse from the cache. 


cacheSolve <- function(x, ...)
        ## Return a matrix that is the inverse of 'x'
{     b <- a$getInverse()
      if(!is.null(b))
      {     message("getting cached data")
            return(b)
      }
      tstmatrix <- a$getmat()
      b <- solve(tstmatrix, ...)
      a$setInverse(b)
      b  
}
