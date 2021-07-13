# \ is lambda
# \ is shorthand function

# normally...
bob <- function(myVar) 2 * myVar
bob(3)

# with R 4.1

bob <- \(myVar) 2 * myVar
bob(4)

# so \() is equivalent to function()
# but why?
# because other languages, such as haskell, use similar notation

# lambda can be used with pipe-foward to change position of x value

x <- c(1:100)

# with magrittr - use "."
x %>% plot(c(100:1), .)

# in R 4.1 with |> (pipe-forward)
x |> (plot(c(100:1), . ))() # the dot in this context doesn't work

# you could do this...
x |> {function(usethis) plot(c(100:1), y = usethis) }()

# ... or ...
x |> {\(usethis) plot(c(100:1), y = usethis)}()

# backslash lambda == function() {}. It's just shorthand
# There's a bit more to it - but may not make a difference to normal user

