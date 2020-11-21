Matrix Math Quick Reference
================
Mark Niemann-Ross

  - [Create a matrix](#create-a-matrix)
  - [Addition](#addition)
  - [Subtraction](#subtraction)
  - [Multiplication - simple](#multiplication---simple)
  - [Multiplication - “dot product”](#multiplication---dot-product)
  - [Division](#division)
  - [The determinant of a matrix](#the-determinant-of-a-matrix)
  - [determinant vs det](#determinant-vs-det)
  - [Zero Matrix](#zero-matrix)
  - [Identity Matrix](#identity-matrix)
  - [Diagonal Matrix](#diagonal-matrix)
  - [Upper and Lower Triangular](#upper-and-lower-triangular)
  - [Matrix Comparison](#matrix-comparison)
      - [simple matrice comparison, using
        equality](#simple-matrice-comparison-using-equality)
      - [object comparison for exact
        equality](#object-comparison-for-exact-equality)
  - [Matrix transposition](#matrix-transposition)
  - [Build a symmetric matrix](#build-a-symmetric-matrix)
  - [Build a skew-symmetrix matrix](#build-a-skew-symmetrix-matrix)
  - [Test for symmetric matrix](#test-for-symmetric-matrix)
  - [Inner product of two vectors](#inner-product-of-two-vectors)
  - [Outer product of two vectors](#outer-product-of-two-vectors)
  - [Outer product of two matrices](#outer-product-of-two-matrices)
  - [Solve a system of equations](#solve-a-system-of-equations)
  - [Inverse matrix](#inverse-matrix)
  - [Permutations](#permutations)
  - [backsolve](#backsolve)
  - [forwardsolve](#forwardsolve)
  - [Singular Value Decomposition](#singular-value-decomposition)
  - [QR Decomposition](#qr-decomposition)
  - [crossproduct](#crossproduct)
  - [tcrossproduct](#tcrossproduct)
  - [eigen values, eigen vectors](#eigen-values-eigen-vectors)
  - [Choleski Decomposition](#choleski-decomposition)
  - [finally - look at
    package::matrix](#finally---look-at-packagematrix)

This Quick Reference is supplemental to courses on [LinkedIn
Learning](https://www.linkedin.com/learning/r-for-data-science-lunchbreak-lessons/matrix-math-overview-of-functions).

An index to all R functions covered at LinkedIn Learning is found
[here](http://niemannross.com/link/rindex)

[The Matrix
package](https://cran.r-project.org/web/packages/Matrix/index.html) is
recommended for advanced operations.

# Create a matrix

[Instructional Video about
Matrix](https://linkedin-learning.pxf.io/rweekly_matrix)

``` r
matrix( c(1:9), nrow = 3)
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    4    7
    ## [2,]    2    5    8
    ## [3,]    3    6    9

# Addition

``` r
A <- matrix( c(1:9), nrow = 3)
B <- matrix( c(11:19), nrow = 3)
A
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    4    7
    ## [2,]    2    5    8
    ## [3,]    3    6    9

``` r
B
```

    ##      [,1] [,2] [,3]
    ## [1,]   11   14   17
    ## [2,]   12   15   18
    ## [3,]   13   16   19

``` r
A + B
```

    ##      [,1] [,2] [,3]
    ## [1,]   12   18   24
    ## [2,]   14   20   26
    ## [3,]   16   22   28

# Subtraction

``` r
A - B
```

    ##      [,1] [,2] [,3]
    ## [1,]  -10  -10  -10
    ## [2,]  -10  -10  -10
    ## [3,]  -10  -10  -10

``` r
B - A
```

    ##      [,1] [,2] [,3]
    ## [1,]   10   10   10
    ## [2,]   10   10   10
    ## [3,]   10   10   10

# Multiplication - simple

``` r
A * B
```

    ##      [,1] [,2] [,3]
    ## [1,]   11   56  119
    ## [2,]   24   75  144
    ## [3,]   39   96  171

# Multiplication - “dot product”

[Instructional video about
%\*%](https://linkedin-learning.pxf.io/rweeklyCrossprod)

``` r
A %*% B
```

    ##      [,1] [,2] [,3]
    ## [1,]  150  186  222
    ## [2,]  186  231  276
    ## [3,]  222  276  330

# Division

**HA - just kidding**. There is no matrix division. Instead, use the
inverse.

\(AX = B\) is solved for X with \(X = A^{-1}B\)

…lots more on inverse below…

# The determinant of a matrix

The determinant of \(\begin{pmatrix} a & b\\ c & d \end{pmatrix}\) is
\(ad - bc\)

``` r
sampleMatrix <- matrix(c(10,12,5,30), nrow = 2)
sampleMatrix
```

    ##      [,1] [,2]
    ## [1,]   10    5
    ## [2,]   12   30

``` r
det(sampleMatrix)
```

    ## [1] 240

…which is equivalent to \(ad - bc\) … which is written as…

``` r
sampleMatrix[1,1]*sampleMatrix[2,2] - sampleMatrix[1,2] * sampleMatrix[2,1]
```

    ## [1] 240

# determinant vs det

`determinant()` produces a list with $modulus and $sign

``` r
determinant(sampleMatrix)
```

    ## $modulus
    ## [1] 5.480639
    ## attr(,"logarithm")
    ## [1] TRUE
    ## 
    ## $sign
    ## [1] 1
    ## 
    ## attr(,"class")
    ## [1] "det"

``` r
determinant(sampleMatrix, logarithm = FALSE)
```

    ## $modulus
    ## [1] 240
    ## attr(,"logarithm")
    ## [1] FALSE
    ## 
    ## $sign
    ## [1] 1
    ## 
    ## attr(,"class")
    ## [1] "det"

# Zero Matrix

``` r
matrix(0, nrow = 3, ncol = 3)
```

    ##      [,1] [,2] [,3]
    ## [1,]    0    0    0
    ## [2,]    0    0    0
    ## [3,]    0    0    0

# Identity Matrix

[Instructional video on
diag()](https://linkedin-learning.pxf.io/rweeklydiag)

``` r
I <- diag(3)
I
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    0    0
    ## [2,]    0    1    0
    ## [3,]    0    0    1

# Diagonal Matrix

[Instructional video on
diag()](https://linkedin-learning.pxf.io/rweeklydiag)

``` r
diag(5, nrow = 3)
```

    ##      [,1] [,2] [,3]
    ## [1,]    5    0    0
    ## [2,]    0    5    0
    ## [3,]    0    0    5

``` r
myMatrix <- A
diag(myMatrix) <- 8
myMatrix
```

    ##      [,1] [,2] [,3]
    ## [1,]    8    4    7
    ## [2,]    2    8    8
    ## [3,]    3    6    8

# Upper and Lower Triangular

[Instructional video on lower.tri() and
upper.tri()](https://linkedin-learning.pxf.io/rweeklyUpperLowerTri)

``` r
upper.tri(A)
```

    ##       [,1]  [,2]  [,3]
    ## [1,] FALSE  TRUE  TRUE
    ## [2,] FALSE FALSE  TRUE
    ## [3,] FALSE FALSE FALSE

``` r
upper.tri(A, diag = TRUE)
```

    ##       [,1]  [,2] [,3]
    ## [1,]  TRUE  TRUE TRUE
    ## [2,] FALSE  TRUE TRUE
    ## [3,] FALSE FALSE TRUE

``` r
lower.tri(A)
```

    ##       [,1]  [,2]  [,3]
    ## [1,] FALSE FALSE FALSE
    ## [2,]  TRUE FALSE FALSE
    ## [3,]  TRUE  TRUE FALSE

``` r
myMatrix <- A
myMatrix[upper.tri(myMatrix)] <- NA
myMatrix
```

    ##      [,1] [,2] [,3]
    ## [1,]    1   NA   NA
    ## [2,]    2    5   NA
    ## [3,]    3    6    9

# Matrix Comparison

There are two ways to compare matrices. First, create two matrices for
example comparison.

``` r
partiallyA <- A
partiallyA[upper.tri(partiallyA)] <- 1 # upper triangle becomes different
```

## simple matrice comparison, using equality

``` r
A == partiallyA # returns logical value for each element
```

    ##      [,1]  [,2]  [,3]
    ## [1,] TRUE FALSE FALSE
    ## [2,] TRUE  TRUE FALSE
    ## [3,] TRUE  TRUE  TRUE

## object comparison for exact equality

``` r
identical(partiallyA, A) # returns logical value for entire matrice comparison
```

    ## [1] FALSE

``` r
identical(A,A) # compare two identical objects
```

    ## [1] TRUE

# Matrix transposition

[Instructional video on
t()](https://linkedin-learning.pxf.io/rweekly_matrix)

``` r
NonSymmetricMatrix <- matrix(c(1:10), nrow = 5)
NonSymmetricMatrix # show what it looks like
```

    ##      [,1] [,2]
    ## [1,]    1    6
    ## [2,]    2    7
    ## [3,]    3    8
    ## [4,]    4    9
    ## [5,]    5   10

``` r
t(NonSymmetricMatrix) # t() for transpose...show what transpose looks like
```

    ##      [,1] [,2] [,3] [,4] [,5]
    ## [1,]    1    2    3    4    5
    ## [2,]    6    7    8    9   10

# Build a symmetric matrix

There is a package for matrix tools. Here’s how to do it with baseR

``` r
A + t(A)
```

    ##      [,1] [,2] [,3]
    ## [1,]    2    6   10
    ## [2,]    6   10   14
    ## [3,]   10   14   18

# Build a skew-symmetrix matrix

``` r
A - t(A)
```

    ##      [,1] [,2] [,3]
    ## [1,]    0    2    4
    ## [2,]   -2    0    2
    ## [3,]   -4   -2    0

# Test for symmetric matrix

[Instructional video on
isSymmetric()](https://linkedin-learning.pxf.io/rweekly_issymetric)

``` r
isSymmetric(A) # not symmetric
```

    ## [1] FALSE

``` r
isSymmetric(A + t(A)) # symmetric
```

    ## [1] TRUE

``` r
isSymmetric(A - t(A)) # skew symmetric
```

    ## [1] FALSE

# Inner product of two vectors

Simple dot-product …aka \(vec1^T\ \ vec2\)

``` r
vec1 <- c(1:3)
vec2 <- c(1:3)
vec1 # what do these look like?
```

    ## [1] 1 2 3

``` r
vec2
```

    ## [1] 1 2 3

``` r
t(vec1) %*% vec2 # inner product
```

    ##      [,1]
    ## [1,]   14

# Outer product of two vectors

Transpose the second vector … \(vec1\ \ vec2^T\)

These three versions produce the same result…

``` r
vec1 %*% t(vec2) # the actual formula 
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    2    3
    ## [2,]    2    4    6
    ## [3,]    3    6    9

``` r
outer(vec1, vec2) # the R function 
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    2    3
    ## [2,]    2    4    6
    ## [3,]    3    6    9

``` r
vec1 %o% vec2 # %o% is a wrapper for outer()
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    2    3
    ## [2,]    2    4    6
    ## [3,]    3    6    9

# Outer product of two matrices

First…a reminder of the contents of matrix A and B

``` r
A
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    4    7
    ## [2,]    2    5    8
    ## [3,]    3    6    9

``` r
B
```

    ##      [,1] [,2] [,3]
    ## [1,]   11   14   17
    ## [2,]   12   15   18
    ## [3,]   13   16   19

Then…here’s the outer product. This multiplies the first matrix by
individual values from the second matrix.

Think of this as…

`A * B[1,1]`

`A * B[2,1]`

…and so on

``` r
outer(A,B) # ... A %o% B will produce the same result
```

    ## , , 1, 1
    ## 
    ##      [,1] [,2] [,3]
    ## [1,]   11   44   77
    ## [2,]   22   55   88
    ## [3,]   33   66   99
    ## 
    ## , , 2, 1
    ## 
    ##      [,1] [,2] [,3]
    ## [1,]   12   48   84
    ## [2,]   24   60   96
    ## [3,]   36   72  108
    ## 
    ## , , 3, 1
    ## 
    ##      [,1] [,2] [,3]
    ## [1,]   13   52   91
    ## [2,]   26   65  104
    ## [3,]   39   78  117
    ## 
    ## , , 1, 2
    ## 
    ##      [,1] [,2] [,3]
    ## [1,]   14   56   98
    ## [2,]   28   70  112
    ## [3,]   42   84  126
    ## 
    ## , , 2, 2
    ## 
    ##      [,1] [,2] [,3]
    ## [1,]   15   60  105
    ## [2,]   30   75  120
    ## [3,]   45   90  135
    ## 
    ## , , 3, 2
    ## 
    ##      [,1] [,2] [,3]
    ## [1,]   16   64  112
    ## [2,]   32   80  128
    ## [3,]   48   96  144
    ## 
    ## , , 1, 3
    ## 
    ##      [,1] [,2] [,3]
    ## [1,]   17   68  119
    ## [2,]   34   85  136
    ## [3,]   51  102  153
    ## 
    ## , , 2, 3
    ## 
    ##      [,1] [,2] [,3]
    ## [1,]   18   72  126
    ## [2,]   36   90  144
    ## [3,]   54  108  162
    ## 
    ## , , 3, 3
    ## 
    ##      [,1] [,2] [,3]
    ## [1,]   19   76  133
    ## [2,]   38   95  152
    ## [3,]   57  114  171

# Solve a system of equations

As an example, start with this system of equations:

\[
2x_1 - 3x_2 - 1x_3 = 2\\
1x_1 + 2x_2 + 3x_3 = 15\\
5x_1 + 1x_2 - 1x_3 = 4\\
\]

…when converted to a matrix…

\[\begin{pmatrix}
2 & -3 & -1\\
1 & 2 & 3\\
5 & 1 & -1\\
\end{pmatrix}
\begin{pmatrix}
x_1\\
x_2\\
x_3\\
\end{pmatrix}
=
\begin{pmatrix}
2\\
15\\
4\\
\end{pmatrix}\]

…then, to solve with R…

``` r
coef_A <- matrix(c(2,1,5,-3,2,1,-1,3,-1), nrow = 3)
RHS_system <- matrix(c(2,15,4), nrow = 3)

solve(coef_A, RHS_system)
```

    ##      [,1]
    ## [1,]    2
    ## [2,]   -1
    ## [3,]    5

# Inverse matrix

\(AA^-1 == I\) … -1 is the inverse of a matrix. I is the identity matrix

``` r
solve(partiallyA) # solve() finds the inverse of a matrix
```

    ##            [,1]       [,2]        [,3]
    ## [1,]  1.8571429 -0.1428571 -0.19047619
    ## [2,] -0.7142857  0.2857143  0.04761905
    ## [3,] -0.1428571 -0.1428571  0.14285714

Note: Some matrices return and error of `Lapack routine dgesv: system is
exactly singular: U[3,3] = 0`

Also note: `solve()` can be used in other ways. Refer to documentation.

# Permutations

``` r
n <- 3 # for an n x n matrix
factorial(n) # provides the number of permutations
```

    ## [1] 6

BaseR doesn’t have a function to generate all possible permutations, but
there are packages that will do this.

# backsolve

Backsolve solves a triangular system of linear equations. This can come
from a gaussian elimination (for example).

Start with… 

``` r
# r holds a matrix of coefficients for the system to be solved
r <- matrix(c(-3, 2, -1,
              0, -2,  5,
              0,  0, -2),
            nrow = 3, byrow = TRUE)

# x is a column matrix with the solutions
x <- matrix(c(-1, -9, 2), ncol = 1)

# backsolve produces the values of x.
backsolve(r, x)
```

    ##      [,1]
    ## [1,]    2
    ## [2,]    2
    ## [3,]   -1

Backsolve produces a column matrix where
\(matrix(c(x_3, x_2, x_1), ncol = 1)\)

# forwardsolve

`forwardsolve` uses the lower triangular matrix. (`backsolve()` uses the
upper triangular matrix.) For example…

``` r
# r holds a matrix of coefficients for the system to be solved

l <- matrix(c(-2,  0, 0,
               5, -2, 0,
              -1, 2, -3),
            nrow = 3, byrow = TRUE)

# x is a column matrix with the solutions
x <- matrix(c(2, -9, -1), ncol = 1)

# forwardsolve produces the values of x.
forwardsolve(l, x)
```

    ##      [,1]
    ## [1,]   -1
    ## [2,]    2
    ## [3,]    2

# Singular Value Decomposition

``` r
svd(A)
```

    ## $d
    ## [1] 1.684810e+01 1.068370e+00 5.543107e-16
    ## 
    ## $u
    ##            [,1]        [,2]       [,3]
    ## [1,] -0.4796712  0.77669099  0.4082483
    ## [2,] -0.5723678  0.07568647 -0.8164966
    ## [3,] -0.6650644 -0.62531805  0.4082483
    ## 
    ## $v
    ##            [,1]       [,2]       [,3]
    ## [1,] -0.2148372 -0.8872307  0.4082483
    ## [2,] -0.5205874 -0.2496440 -0.8164966
    ## [3,] -0.8263375  0.3879428  0.4082483

# QR Decomposition

Useful for solving \(Ax = b\) (\(A\) being a matrix, \(b\) being a
vector)

``` r
qr(A)
```

    ## $qr
    ##            [,1]      [,2]          [,3]
    ## [1,] -3.7416574 -8.552360 -1.336306e+01
    ## [2,]  0.5345225  1.963961  3.927922e+00
    ## [3,]  0.8017837  0.988693  1.776357e-15
    ## 
    ## $rank
    ## [1] 2
    ## 
    ## $qraux
    ## [1] 1.267261e+00 1.149954e+00 1.776357e-15
    ## 
    ## $pivot
    ## [1] 1 2 3
    ## 
    ## attr(,"class")
    ## [1] "qr"

# crossproduct

Not to be confused with a dot product (which is done with %\*%).
Regarding when to use `crossprod()` vs `t(A) %*% B` … one may be faster
than another based on the matrix being sparse. But this will only make a
difference on massive matrices.

``` r
crossprod(A,B)
```

    ##      [,1] [,2] [,3]
    ## [1,]   74   92  110
    ## [2,]  182  227  272
    ## [3,]  290  362  434

…which is equivalent to…

``` r
t(A) %*% B
```

    ##      [,1] [,2] [,3]
    ## [1,]   74   92  110
    ## [2,]  182  227  272
    ## [3,]  290  362  434

# tcrossproduct

``` r
tcrossprod(A,B)
```

    ##      [,1] [,2] [,3]
    ## [1,]  186  198  210
    ## [2,]  228  243  258
    ## [3,]  270  288  306

…which is equivalent to…

``` r
A %*% t(B)
```

    ##      [,1] [,2] [,3]
    ## [1,]  186  198  210
    ## [2,]  228  243  258
    ## [3,]  270  288  306

# eigen values, eigen vectors

`eigen()` returns both eigen values and eigen vectors

Here’s a matrix…

``` r
A
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    4    7
    ## [2,]    2    5    8
    ## [3,]    3    6    9

Here’s the eigen value and vector

``` r
eigen(A)
```

    ## eigen() decomposition
    ## $values
    ## [1]  1.611684e+01 -1.116844e+00 -5.700691e-16
    ## 
    ## $vectors
    ##            [,1]       [,2]       [,3]
    ## [1,] -0.4645473 -0.8829060  0.4082483
    ## [2,] -0.5707955 -0.2395204 -0.8164966
    ## [3,] -0.6770438  0.4038651  0.4082483

# Choleski Decomposition

``` r
symmetricalMatrix <- matrix(c(20,12,5,
                              12,15,2,
                              5,2,25), nrow = 3)

isSymmetric(symmetricalMatrix)
```

    ## [1] TRUE

``` r
chol(symmetricalMatrix)
```

    ##          [,1]     [,2]       [,3]
    ## [1,] 4.472136 2.683282  1.1180340
    ## [2,] 0.000000 2.792848 -0.3580574
    ## [3,] 0.000000 0.000000  4.8602258

# finally - look at package::matrix

``` r
#install.packages("Matrix")
library(Matrix)
```
