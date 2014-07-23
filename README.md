### Introduction
I'm overwritting this README assuming we won't have to do a merge
request to the original repository

This repository contains 3 files:
* cachematrix.R, with the implementation requested in the assigment
* cachematrix.test.R, an R script to test the implementation actually
works.
* cachemean.R, a copy of the script in the instructions, created to test
how that implementation works


### Instructions

To run the test script, execute the following under R:

```
source("cachematrix.test.R", print.eval=TRUE)
Creating first 2x2 matrix
     [,1] [,2]
[1,]    4    3
[2,]    3    2
Calculating inverse
     [,1] [,2]
[1,]   -2    3
[2,]    3   -4
Returning cached inverse
     [,1] [,2]
[1,]   -2    3
[2,]    3   -4
Overwriting 2x2 matrix
Calculating inverse
     [,1] [,2]
[1,] -2.0  1.0
[2,]  1.5 -0.5
Returning cached inverse
     [,1] [,2]
[1,] -2.0  1.0
[2,]  1.5 -0.5
Overwriting matrix with a 3x3 matrix
Calculating inverse
            [,1]       [,2]        [,3]
[1,]  1.09090909  0.2272727 -0.18181818
[2,] -0.54545455  0.1363636  0.09090909
[3,] -0.09090909 -0.2272727  0.18181818
Returning cached inverse
            [,1]       [,2]        [,3]
[1,]  1.09090909  0.2272727 -0.18181818
[2,] -0.54545455  0.1363636  0.09090909
[3,] -0.09090909 -0.2272727  0.18181818
```

