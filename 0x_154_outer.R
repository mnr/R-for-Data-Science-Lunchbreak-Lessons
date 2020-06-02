# outer product of two matrices

# needs clarification - this is mostly just notes for the final presentation

# Outer product of two vectors
Transpose the second vector ... $vec1\ \ vec2^T$
  
  These three versions produce the same result...
```{r}

vec1 %*% t(vec2) # the actual formula 
outer(vec1, vec2) # the R function 
vec1 %o% vec2 # %o% is a wrapper for outer()
```

# Outer product of two matrices
First...a reminder of the contents of matrix A and B
```{r}
A
B
```

Then...here's the outer product. This multiplies the first matrix by individual values from the second matrix.

Think of this as...

```A * B[1,1]```

```A * B[2,1]```

...and so on
```{r}
outer(A,B) # ... A %o% B will produce the same result, assuming fun=*
```
