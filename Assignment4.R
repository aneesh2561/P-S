##1
x<- c(0,1,2,3,4)
p<- c(0.41,0.37,0.16,0.05,0.01)

print(sum(x,p))
print(weighted.mean(x,p))
print(c(x%*%p))

##2
f<-function(t)
{
  (0.1*t*exp(-0.1*t))
}

print(integrate(f,0,Inf))

##3
x<-c(0,1,2,3)
px<-c(0.1,0.2,0.2,0.5)

res<- (12*x) + (3-x)*(2) -18
print(weighted.mean(res,px))

##4
f<-function(t){
  (t)*0.5*exp(-1*abs(t))
}

g<-function(t){
  (t^2)*0.5*exp(-1*abs(t))
}

first<-integrate(f,1,10)
second<-integrate(g,1,10)

variance<-second$value-(first$value^2)

sprintf('Mean is :')
print(first$value)

sprintf('Variance is :')
print(variance)

##5
f <- function(y){(3/4)*(1/4)^(sqrt(y)-1)} 
x<-3
y = x^2 
proby <- f(y) 
print(proby) 

#Finding probability distribution of Y for X = 1,2,3,4,5 

x<- c(1,2,3,4,5)
y  = x^2 
proby <- f(y) 
print(proby) 
#Expected value of y i.e. mean(y) using sum() or weighted.mean()
Expval <- sum(y*proby) 
print(Expval) 
#variance =E(y^2)-E(y)^2

z<-y^2
EY2<-sum(z*proby)
var<-EY2-(Expval)^2 
print(var) 
