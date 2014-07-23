# Use this code to test my implementation worked properly

source("cachematrix.R")

# Known to be invertible
message("Creating first 2x2 matrix")
m1 <- makeCacheMatrix(matrix(c(4, 3, 3, 2), 2, 2))

# Check the value is correct
m1$get()

# Calculate the inverse
message("Calculating inverse")
cacheSolve(m1)

# Call again, it should return a cached value
cacheSolve(m1)

# Overwrite the matrix
message("Overwriting 2x2 matrix")
m1 <- makeCacheMatrix(matrix(c(1, 3, 2, 4), 2, 2))

# Calculate the inverse
message("Calculating inverse")
cacheSolve(m1)

# Call again, it should return a cached value
cacheSolve(m1)

# Even better, now use a larger matrix
message("Overwriting matrix with a 3x3 matrix")
m1 <- makeCacheMatrix(matrix(c(1, 2, 3, 0, 4, 5, 1, 0, 6), 3, 3))

# Calculate the inverse
message("Calculating inverse")
cacheSolve(m1)

# Call again, it should return a cached value
cacheSolve(m1)

