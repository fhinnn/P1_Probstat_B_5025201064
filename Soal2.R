n=20 
p=0.2 

#A
x=4 
peluang=dbinom(x,n,p) 
peluang

#B
hist(rbinom(x,n,p),xlab="X",ylab="Frekuensi",main="Grafik Histogram Binomial") 

#C
mean=n*p #nilai rataan
mean
var=n*p*(1-p) #nilai variansi
var

