#Problem 1
#Part A
x <- function(x,n) {
  for(j in 1:n)
    power = 1:n
    print(x^power)
}
#Part B
x(x=2,n=5)
x(x=3,n=3)
x(x=5,n=7)

#Problem 2
#Part A
my_function <- function(a,b){
  if(is.numeric(a) & is.numeric(b)){
    return(a+b)
  }
  else{
    return("the arguments were not both numeric")
  }
}

#Part B
my_function(a=2,b=4)
my_function(a=2,b='hello')

#Problem 3
ifelse(faithful$eruptions > 3,'long','short')

#Problem 4
x <- c(16,7,4,8,3,21)

for(i in 1:4){
  print(x[i])
}

#Problem 5
x <- ('PSTAT')
i <- 1

repeat{
  i = i+1
  print(x,i)
  if(i ==7){
    break
  }
}

#Problem 6
j<- 13

while (j >= 13 & j<= 17)
{
  for(j in 13:17){
    if(j%%2 != 0)
  {
    print(j^2)
  }
  }
}

#Problem 7
x <- matrix(1:6,ncol=2,nrow=3,byrow=TRUE)
for(r in 1:3){
  for(c in 1:2){
    if(r%%2 != 0 && c%%2 != 0)
      print(x[r,c])
  }
}

#Problem 8
x <- c(2,5,3,9,8,11,6)

#Part A

count=0
for(i in x) {
  if(i %% 2 !=0)
    count<- count+1
}

print(count)

#Part B

count1=0
count2=0
for(i in x) {
  if(i %% 2 !=0)
    count1<- count1+1
  else count2 <- count2+1
}
#Part C

print(c(count1,'odd numbers'))
print(c(count2,'even numbers'))
cat(count1,'odd numbers')
cat(count2,'even numbers')
