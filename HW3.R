#Problem 1

#Part A
a <- c(8,98,5,115)
b <- c(22,76,16,69)

#Part B
rowname <- c('Deaths','Survivors')
columnname <-  c('TOLB','Placebo')
matrixnamee <- c('Age > 55', 'Age <= 55')
matrix <- array(c(a,b) , dim = c(2,2,2), dimnames = list(rowname,columnname, matrixnamee))
matrix

#Part C
apply(matrix,c(1),sum)
apply(matrix,c(2),sum)
print(matrix[2,2,2])

#Part D

matrix1 <- matrix[,,1]
matrix2 <- matrix[,,2]
combined <- (matrix1 + matrix2)

combined

#Problem 2
#Part A
is.data.frame(VADeaths)
#it is not
VADeaths <- data.frame(VADeaths)

#Part B

rowsums <- rowSums(VADeaths)
VADeaths$rowsums <- rowsums
rowsums
VADeaths

#Part C 
summary(VADeaths)
boxplot(VADeaths[,1:4], col = 'red')

#Problem 3
#Part A

typeof(state.x77)
class(state.x77)

#Part B
df1 <- data.frame(state.x77)

#Part C
sum(df1$Income < 4300)

#Problem 4

#Part A

z <- factor(c("Agree", "Agree", "Strongly Agree", "Disagree", "Agree"))

#Part B

nlevels(z)

#Part C

levels(z)

#Problem 5

#Part A
subject <- c('English','Math','Chemistry','Physics')
percent <- c(80,100,85,90)
score <- data.frame(subject,percent)
score

#Part B
colnames(score) <- c('Course','Score')

#Part C
score['Course']

#Problem 6
dataset1 <- data.frame(swiss)
data <- dataset1[c(1:3,10:13), c("Examination","Education", "Infant.Mortality")]
data
