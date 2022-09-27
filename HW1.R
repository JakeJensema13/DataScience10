#PROBLEM 1
#make vector with c function
x <- c(5,7,3,10,1)

#Part A
x[3]

#Part B
x[-2]

#Part C
x[c(2,3,5)]

#Part D
x[4] <- 17

x

#Part E
x[c(1,3)] <- 4

#Problem 2

#Part A
x <- c(1,2,3,7,6,8,3,12,0,17)

#Part B 
length(x)

#Part C
sort(x, decreasing= TRUE)

#Part D

mean(x)

#quote = false is used to print wothout quotes
#Problem 3
print("PSTAT 10 HW 1 Question 5.", quote = FALSE)

#Problem 4

#use seq function to make list
seq(2.25,3,0.25)


#use rep function to make list
#Problem 5
rep(1:4,each = 3,length = 10)

#Problem 6
x <- readline(prompt = "Type in your name ")
print(paste("Users name is",x))
