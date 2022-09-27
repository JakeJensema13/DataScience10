#Problem 1

#Part A

View(HairEyeColor)

#Part B

is.array(HairEyeColor)

#Part C

#1
sum(HairEyeColor)

#2
sum(HairEyeColor[,,'Male'])

#3
sum(HairEyeColor[,'Blue',])

#4
sum(HairEyeColor['Red',,'Female'])


#Problem 2

#Part A

plot(mpg~drat, data = mtcars)  #mpg is on y axis

#Part B

barplot(mtcars$gear)

#Part C

summary(mtcars)

#Part D

boxplot(mtcars$mpg,col = 'red',main = 'cars mpg')

#Part E
boxplot(mpg~gear , data = mtcars, col = 'blue', xlab = 'number of gears', ylab = 'miles per gallon', main = 'number of gears / mpg')

#Problem 3

#Part A
y <-c(77, 44, 33, 'Hamilton', 'Bottas', 'Verstappen')

#Part B 
z <- list(77, 44, 33, 'Hamilton', 'Bottas', 'Verstappen') #a list makes all elements characters while a vector makes them characters

#Part C
z[[4]]  #When doing only 1 bracket is returns item like its part of a matrix

#Part D

list(c,p,q) #list of vectors is possible

d <- c(z) #Vector of list is possible

list(z) #list of list kinda looks like it makes a matrix

a <- c(u,y,t) #vectpr of vector is possible

#Problem 4

#Part A - C

t <- c('c1', 'c2', 'c3','c4')
u <- c('r1','r2','r3','r4')
a <- matrix(16:31,4,4,byrow = TRUE,dimnames = list(u,t))

#Part D
a[2,3]

#Problem 5

#Part A

x <- 1:20
y <- 1:20
ROW <- c("R1",'R2','R3')
COL <- c('C1','C2','C3','C4')
MATRIX <- c('Matrix 1', 'Matrix 2')
q <- array(1:20,dim = c(3,4,2),dimnames = list(ROW,COL,MATRIX))
print(q)

#Part B

apply(q,(2),sum)

#Part C
apply(q,3,mean)
