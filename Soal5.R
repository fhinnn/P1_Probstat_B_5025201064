lamda = 3

#A
peluang = rexp(lamda)
peluang


#B
set.seed(1)
hist(rexp(10, rate = lamda), main = "Grafik Histogram Exponetial dengan 10 bil.random")
hist(rexp(100, rate = lamda), main = "Grafik Histogram Exponetial dengan 100 bil.random")
hist(rexp(1000, rate = lamda), main = "Grafik Histogram Exponetial dengan 1000 bil.random")
hist(rexp(10000, rate = lamda), main = "Grafik Histogram Exponetial dengan 10000 bil.random")

#C
n=100
mean=


