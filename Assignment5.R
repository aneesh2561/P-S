##1
x1_punif <- punif(45,0,60,lower.tail= FALSE)
x2_punif <- punif(30,0,60,lower.tail = TRUE) - punif(20,0,60,lower.tail = TRUE)
print(x1_punif)

##2
x1<-dexp(3,1/2)
print(x1)

x<-c(0,1,2,3,4,5)
y<-dexp(x,1/2)
plot(y,type='o')

x2<-pexp(3,1/2,lower.tail = TRUE)
print(x2)

y1<- pexp(x,1/2)
plot(y1,type='o')

set.seed(500) 

N <- 1000
y_rexp <- rexp(N, rate = 1/2)
plot(density(y_rexp))

##3
x1<- dgamma(3,shape = 2,scale = 1/3)
print(x1)

x2<- pgamma(1,shape = 2,scale = 1/3,lower.tail = FALSE)
print(x2)

c_val <- qgamma(0.7,shape =2,scale = 1/3)
print(c_val)