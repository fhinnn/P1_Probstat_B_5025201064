p = 0.2
x = 3
#A
Peluang = dgeom(x-1,p)
Peluang

#B
n=10000
mean(rgeom(n, p) == 3)
mean

#C


#D
hist(rgeom(n, p), main = 'Grafik Histogram Geometrik')

#E
mean = 1 / p #nilai rataan
mean
var = (1 - p) / (p ^ 2) #niali variansi
var


