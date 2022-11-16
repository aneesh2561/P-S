##1
pbinom(9, size = 12, prob = 1/6) - pbinom(6, size = 12, prob = 1/6)
Or
dbinom(7, 12, 1/6) + dbinom(8, 12, 1/6) + dbinom(9, 12, 1/6)

##2
pnorm(84, 72, 15.2, lower.tail = FALSE)
print(pnorm)
 
##3
dpois(0, 5)

dpois(48, 50) + dpois(49, 50) + dpois(50, 50)

##4
dbinom(3, 5, 17/250)
Or
dhyper(3, 17, 233, 5)

##5
#(a)
Binomial distrubution

#(b)
n=31
p=0.447
q=1-p

c=seq(0,n)
y = dbinom(c,n,p)
plot(c,y)

y_c = pbinom(c,n,p)
plot(c,y_c)

#(c)
n=31
p=0.447
q=1-p

c=seq(0,n)
y = dbinom(c,n,p)
plot(c,y)

y_c = pbinom(c,n,p)
plot(c,y_c)

#(d)

sprintf("Mean %f",n*p)
sprintf("Varience %f",n*p*q)
sprintf("Standard deviation %f",sqrt(n*p*q))

