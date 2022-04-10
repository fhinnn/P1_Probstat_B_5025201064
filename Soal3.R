lamda = 4.5

#A
x = 6
peluang = dpois(x, lamda)
peluang

#B
n = 356
hist(rpois(n, lamda), main = "Grafik Histogram Poisson")

#Poin C

# Poin D
mean = var = lamda
mean
var