##1
v= c(rep("gold",20),rep("silver",30),rep("bronze",50))
vc=sample(v,10)

s=c(rep("success",90),rep("failure",10))
sc=sample(s,10)
##2
find_prob <- function(n) {
  x<-1;
  for (i in 1:n){
    x<-x*((365-i+1)/365)
  }
  return (1-x)
}

print('Probability that two people have same birthday , {n = 45}')
print(find_prob(45))

n=1
prob=0

print('Sampling for various n :')
sampling=1
while(sampling<=20){
  prob<-find_prob(sampling)
  print(prob)
  sampling<-sampling+1
}

print('Finding value of n for which probability is >=0.5 :')

while(prob<= 0.5){
  n<- n+1
  prob<-find_prob(n);
}

sprintf("Value of n is %d",n)
##3
BayesTheorem<- function (pA,pB,pBA){
  pAB<-(pA*pBA) / pB
  print(pAB)
}

p_cloudy <- 0.4
p_rainy <- 0.2
p_cloudy_on_rainy <- 0.85

p_rainy_on_cloudy <- BayesTheorem(p_rainy,p_cloudy,p_cloudy_on_rainy)
##4
data(iris)
head(iris)
structure(iris)
max(iris$Sepal.Length) - min(iris$Sepal.Length)

mean(iris$Sepal.Length)
median(iris$Sepal.Length)
quantile(iris$Sepal.Length,0.25)
quantile(iris$Sepal.Length,0.75)
IQR(iris$Sepal.Length)
sd(iris$Sepal.Length)
var(iris$Sepal.Length)
summary(iris)
##5
# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)

# Calculate the mode using the user function.
result <- getmode(v)
print(result)

# Create the vector with characters.
charv <- c("o","it","the","it","it")

# Calculate the mode using the user function.
result <- getmode(charv)
print(result)
