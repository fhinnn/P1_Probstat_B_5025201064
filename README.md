# P1_Probstat_B_5025201064
Repository untuk Pengerjaan praktikum 1 Probstat 2022


| Nama | NRP |
| ------ | ------ |
| DHAFIN ALMAS NUSANTARA | 5025201064 |

# Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
```r
p = 0.2
x = 3
```

- Poin A
 
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi 
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
```r
#A
Peluang = dgeom(x-1,p)
Peluang
```

- Poin B

mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```r
#B
n = 10000
mean(rgeom(n, p) == 3)
mean
```
- Poin C

Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

Dari poin A dan B dapat disimpulkan bahwa hasil pada keduanya memiliki hasil yang berbeda karena pada poin A nilai nya konstan dan memeiliki nilai sampel yang tetap sedangkan pada poin B terdapat variabel acak atau variabel random sehingga hasilnya akan berbeda terus menerus karena tergantung bagaimana variabel yang didapat saat dilakukan pengambilan secaara acak dari fungsinya 

- Poin D

Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```r
#D
hist(rgeom(n, p), main = 'Grafik Histogram Geometrik')
```
- Poin E

Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik
```r
#E
mean = 1 / p #nilai rataan
mean
var = (1 - p) / (p ^ 2) #niali variansi
var
```

Screenshot dan Keterangan

![alt text](https://github.com/fhinnn/P1_Probstat_B_5025201064/blob/main/soal1.jpg)




# Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
```r
n = 20 
p = 0.2 
```
- Poin A

Peluang terdapat 4 pasien yang sembuh.
```r
#A
x = 4 
peluang = dbinom(x,n,p) 
peluang
```
- Poin B

Gambarkan grafik histogram berdasarkan kasus tersebut.
```r
#B
hist(rbinom(x,n,p),xlab = "X",ylab = "Frekuensi",main = "Grafik Histogram Binomial") 
```
- Poin C

Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
```r
#C
mean=n * p #nilai rataan
mean
var=n * p * (1-p) #nilai variansi
var
```
Screenshot dan Keterangan

![alt text](https://github.com/fhinnn/P1_Probstat_B_5025201064/blob/main/soal2.jpg)


# Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. 
(gunakan Distribusi Poisson)
```r
lamda = 4.5
```

- Poin A

Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```r
#A
x = 6
peluang = dpois(x, lamda)
peluang
```

- Poin B

simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)
```r
#B
n = 356
hist(rpois(n, lamda), main = "Grafik Histogram Poisson")
```

- Poin C

dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

Poin A dan B hampir sama hasilnya dapat dilihat dari tabelnya , karena nilai dari poin A sendiri didapat dari range nilai poin B. Range dari B dapat dilihat pada plot yang telah terbentuk.

Oleh karena itu, dalam estimasi selama 365 hari akan memberikan nilai hasil yang hampir sama dengan estimasi jumlah bayi yang akan dilahirkan di waktu selanjutnya.

- Poin D

Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
```r
#D
mean = var = lamda
mean
var
```
Screenshot dan Keterangan

![alt text](https://github.com/fhinnn/P1_Probstat_B_5025201064/blob/main/soal3.jpg)

# Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:
```
x = 2
v = 10
```

- Poin A

Fungsi Probabilitas dari Distribusi Chi-Square.
```r
#A
peluang = dchisq(x,10)
peluang
```

- Poin B

Histogram dari Distribusi Chi-Square dengan 100 data random.
```r
#B
data = 100
hist(rchisq(data,v),xlab = "X",ylab = "V",main = "Grafik Histogram Chi-Square")
```

- Poin C

Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
```r
#C
mean = v #nilai rataan
mean
var = 2*v #nilai variansi
var
```
Screenshot dan Keterangan

![alt text](https://github.com/fhinnn/P1_Probstat_B_5025201064/blob/main/soal4.jpg)


# Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
```r
lamda = 3
```

- Poin A

Fungsi Probabilitas dari Distribusi Exponensial
```r
#A
peluang = rexp(lamda)
peluang
```

- Poin B

Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```r
#B
set.seed(1)
hist(rexp(10, rate = lamda), main = "Grafik Histogram Exponetial dengan 10 bil.random")
hist(rexp(100, rate = lamda), main = "Grafik Histogram Exponetial dengan 100 bil.random")
hist(rexp(1000, rate = lamda), main = "Grafik Histogram Exponetial dengan 1000 bil.random")
hist(rexp(10000, rate = lamda), main = "Grafik Histogram Exponetial dengan 10000 bil.random")
```

- Poin C

Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
```r
#C
n = 100
set.seed(1)
mean = mean(rexp(n, lamda))
var = (sd(rexp(n, lamda))) ^ 2
mean
var
```
Screenshot dan Keterangan

![alt text](https://github.com/fhinnn/P1_Probstat_B_5025201064/blob/main/soal5.jpg)


# Soal 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
```r
n = 100
mean = 50
sd = 8
```

- Poin A

Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
```r
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
```

- Poin B

Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
```r
#B
breaks = 50
hist(data, breaks, main = "5025201064_Dhafin Almas Nusantara_Probstat_B_DNHistogram")
```

- Poin C

Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
```r
#C
var = (sd(data)) ^ 2
var
```
Screenshot dan Keterangan

![alt text](https://github.com/fhinnn/P1_Probstat_B_5025201064/blob/main/soal6.jpg)
![alt text](https://github.com/fhinnn/P1_Probstat_B_5025201064/blob/main/soal6bc.jpg)




