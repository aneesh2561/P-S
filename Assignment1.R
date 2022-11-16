##1
c <- c(5, 10, 15, 20, 25, 30)

max <- c[1]
min <- c[1]

for (i in c)
{
  if (i > max)
  {
    max <- i
  }
  if (i < min)
  {
    min <- i
  }
}
##2
print(c)

sprintf("%d is maximum and %d is minimum", max, min)

n = readline(prompt = "Enter number to find factorial of :")
if ( n < 0 ) {
  print('Entered number is negative. Please try again')
} else {
  fact = 1
  for (i in 1:n){
    fact = fact * i
  }
  print(fact)
}
##3
n = readline(prompt = "Enter number of terms to find fibonacci sequence of :")
if ( n < 0 ) {
  print('Entered number is negative. Please try again')
} else {
  if(n == 0){
    print(0)
  } else if(n == 1){
    print(1)
  } else {
    a = 0
    b = 1
    print(0)
    for (i in 2:n){
      c = a + b
      a = b
      b = c
      print(c)
    }
  }
}
##4
a = readline(prompt="Enter first number ")
a= as.integer(a)
b = readline(prompt = "Enter second number ")
b= as.integer(b)


while(TRUE){
  op=readline(prompt="Enter operator . Type q to quit ")
  op=as.character(op)
  if( op =="+"){
    print(a+b)
  }else if (op == "-"){
    print(a-b)
  }else if (op=="*"){
    print(a*b) 
  }else if (op=="/"){
    print(a/b)
  }else if (op=="q") {
    print("Quitting")
    break;
  }else{
    print("Invalid operator")
  }
}
##5
##Line plot

plot(1:10, type="l", lwd=5, lty=3) 

x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

##Scatter plot
plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed") 

##Pie chart
# Create a vector of pies
x <- c(10,20,30,40)
# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Pie Chart", col = colors)

# Display the explanation box
legend("bottomright", mylabel, fill = colors) 

## Bar plot

x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, width = c(1,2,3,4),col = c("blue", "yellow", "green", "black"))
