# crossproduct & tcrossproduct

# placeholder. Needs elaboration

# crossproduct
Not to be confused with a dot product (which is done with %*%). Regarding when to use ```crossprod()``` vs ```t(A) %*% B``` ... one may be faster than another based on the matrix being sparse. But this will only make a difference on massive matrices.

```{r}
crossprod(A,B)
```
...which is equivalent to...
```{r}
t(A) %*% B
```

# tcrossproduct
```{r}
tcrossprod(A,B)
```
...which is equivalent to...
```{r}
A %*% t(B)
```

