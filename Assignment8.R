#a
a<-read.csv(file.choose())
#b
dim(a)
#c
c<-mean(a$Wall.Thickness)
hist(a$Wall.Thickness)
#d
abline(v=c,col="RED")
#ques 2
#a
par(mfcol=c(2,2))
s=c()
n=100
for(i in 1:n)
{s[i]=mean(sample(a$Wall.Thickness,10,replace=F))} 
s
hist(s)
#b
ss=c()
n1=1000
for(i in 1:n)
{ss[i]=mean(sample(a$Wall.Thickness,50,replace=F))}
ss
hist(ss)
sss=c()
n2=9000
for(i in 1:n2)
{sss[i]=mean(sample(a$Wall.Thickness,100,replace=T))}
sss
hist(sss)

ssss=c()
n3=9000
for(i in 1:n3)
{
  ssss[i]=mean(sample(a$Wall.Thickness,9000,replace=F))
}
ssss
hist(ssss)
