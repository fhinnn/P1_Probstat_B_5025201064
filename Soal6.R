n = 100
mean = 50
sd = 8

#A
set.seed(1)
data <- rnorm(n, mean, sd)
data
summary(data)

x1 = runif(1, min = min(data), max = mean)
x2 = runif(1, min = mean, max = max(data))
x1
x2

peluang1 <- pnorm(x1, mean, sd)
peluang2 <- pnorm(x2, mean, sd)
peluang1
peluang1

peluang <- peluang2 - peluang1
plot(data)

#B
breaks = 50
hist(data, breaks, main = "5025201064_Dhafin Almas Nusantara_Probstat_B_DNHistogram")

#C
var = (sd(data)) ^ 2
var
