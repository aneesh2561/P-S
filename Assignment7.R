##1
n <- 100
df <- n - 1
a <- rt(n,df)
hist(a)

##2
df <- c(2,10,25)
n <- 100
k <-length(df)

for (i in 1:k) {
  print(rchisq(n,df[i]))
  writeLines("\n")
}

##3
x <- seq(-6, 6, length = 100)

df = c(1,4,10,30)
colour = c("red", "orange", "green", "yellow","black")

plot(x, dnorm(x), type = "l", lty = 2, xlab = "t-value", ylab = "Density",
     main = "Comparison of t-distributions", col = "black")

for (i in 1:4){
  lines(x, dt(x, df[i]), col = colour[i])
}

legend("topright", c("df = 1", "df = 4", "df = 10", "df = 30", "normal"),
       col = colour, title = "t-distributions", lty = c(1,1,1,1,2))

##4
A <- qf(.95,df1=10,df2=20)
print(A)

B1 <- pf(1.5,df1=10,df2=20,lower.tail = TRUE)
B2 <- pf(1.5,df1=10,df2=20,lower.tail = FALSE)
print(B1)
print(B2)

C1 = qf(0.25,df1=10,df2=20)
C2 = qf(0.5,df1=10,df2=20)
C3 = qf(0.75,df1=10,df2=20)
C4 = qf(0.999,df1=10,df2=20)
print(C1)
print(C2)
print(C3)
print(C4)

D <- rf(n = 1000, df1=10,df2=20)
hist(D)
print(D)
