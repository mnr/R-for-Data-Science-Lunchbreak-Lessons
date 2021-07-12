
solve() for systems of equations
========================================================
author: Mark Niemann-Ross
date: 
autosize: true

A word about this file
=====================================================
Note that this file is an Rpresentation file.
Please review the previous R - lunchbreak lesson on Rpresentation to understand how to view and use this file.



Solve a system of equations
===
As an example, start with this system of equations:

$$
2x_1 - 3x_2 - 1x_3 = 2\\
1x_1 + 2x_2 + 3x_3 = 15\\
5x_1 + 1x_2 - 1x_3 = 4\\
$$

...when converted to a matrix...

$$\begin{pmatrix}
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
\end{pmatrix}$$

To solve with R...
===
Represent the coefficients...

```r
coef_A <- matrix(c(2,1,5,-3,2,1,-1,3,-1), nrow = 3)
coef_A
```

```
     [,1] [,2] [,3]
[1,]    2   -3   -1
[2,]    1    2    3
[3,]    5    1   -1
```

Represent the right hand side
===

```r
RHS_system <- matrix(c(2,15,4), nrow = 3)
RHS_system
```

```
     [,1]
[1,]    2
[2,]   15
[3,]    4
```

Use solve()
===


```r
solve(coef_A, RHS_system)
```

```
     [,1]
[1,]    2
[2,]   -1
[3,]    5
```

