#Problem 1
pnorm(8,mean = 7,sd =1)

#Problem 2
1 - pbinom(2,9,.08)

#Problem 3
#Part A
pnorm(94,mean=83,sd=11)-pnorm(61,mean=83,sd=11)
# 81.85%

#Part B
pnorm(74,mean=83,sd=11)
# 20.66%

#Part C
1 - pnorm(101,mean=83,sd=11)
# 5%

#Problem 4
pnorm(1000,mean=775,sd=150)
# 93.31%

#Problem 5
x <- rnorm(n=1000,mean=3,sd=1)
sum(x > 5)

#or we use

rbinom(1,1000,1/6)

#Problem 6
x <- read.csv(file = "HW5_Q6.csv")
#Part A
data.frame(x)

#Part B
hist(x$height)

#Part C
#You can see by the histogram it has a bell shape curve which is normal distribution

#Problem 7
#Part A
pnorm(.83,mean=0,sd=1)
# 79.67%

#Part B
pnorm(0.0064,mean=0,sd=1,lower.tail = FALSE)
# 49.74%

#Problem 8
#Part A
pnorm(72,mean=69,sd=2.8,lower.tail = FALSE)

#Part B
pnorm(72,mean=63.6,sd=2.5,lower.tail = FALSE)

#Part C
qnorm(.95,mean = 69,sd=2.8)

#Problem 9
#Part A
#No because each time u have a 1/4 chance at guessing the answer there is no mean

#Part B
#No because there is no average or mean to base it on

#Part C
#Yes bc there is an average and we can form SD from that and some days will have more chirps and some will have less but it will usually come back to 15

#Part D
#No because its always a 50/50 of getting heads in a flip

#Part E
#Yes because some times you will get less than the average and some times you will get more so you can form SD and MEAN from that

#Problem 10

#80% because u would use conditional probability of p(x>2) | p(x>1.5) = p(x>2) / p(x>1.5)