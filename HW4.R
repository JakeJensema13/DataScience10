#Problem 8
#Part A
pmf <- c(25/36,10/36,1/36)

cdf <- c(25/36,35/36,1)

barplot(cdf)

#Part B
pmf2 <- c(1/8,3/8,3/8,1/8)

cdf2 <- c(1/8,4/8,7/8,1)

barplot(cdf2)

#Problem 9
sample(1:8,20,replace = TRUE)

#Problem 10
sample(mtcars$mpg,5)

#Problem 11
df <- data.frame(mtcars)
df[sample(nrow(df),6),

#Problem 12
x <- c('red','red','red','blue','blue','blue','green','green','green','green')
sample(x,2)

