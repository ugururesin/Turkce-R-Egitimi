# 2. BÖLÜM: VEKTÖRLER

# Vektörler, aynı tipte verilerden oluşan bir dizidir.
# Listeler de bir vektör türüdür ancak farklı tipte verileri içerebilir.

# Boş vektör oluşturma
x <- vector()
x

x <- vector(mode="numeric", length=10)
x

x <- vector(mode="character", length=10)
x

# Combine ile vektör oluşturma
vector1 <- c(100, 200 ,300) #numeric
vector2 <- c(3.14, 2.71, -1) #numeric
vector3 <- c(TRUE,FALSE,TRUE) #logical
vector4 <- c(T,F,T,F,T,F) #logical
vector5 <- c("Ali","Cansu","Deniz") #character
vector6 <- c(5+2i, 3+5i, 5-1i, -4+4i) #complex

class(vector1)
class(vector2)
class(vector3)
class(vector4)
class(vector5)
class(vector6)

# Boş değer (NA)
vektor1 <- c(100,200,300,NA)
vektor1

# : ile vektör oluşturma
x <- 1:10
x

# Vektör elemanlarını seçme
vektor1 <- c(10,20,30,40,50)
vektor1[1]
vektor1[2]
vektor1[1:3]
vektor1[2:4]
vektor1[-1]
vektor1[-c(1,4)]

# Boş vektöre değer atama
vektor1 <- vector(mode="numeric", length=5)
vektor1
vektor1[1] <- 10
vektor1[-1] <- c(20,30,40,50)
vektor1

# Vektörde eleman isimleri
stoklar <- c(70,100,50,60)
names(stoklar)

names(stoklar) <- c("Termos","Bot","Tulum","Matara")
stoklar

stoklar["Termos"]
stoklar["Termos"]*2

# Vektörleri karşılaştırma
vektor1 <- c(1,2,3)
vektor2 <- c(1,2,3)
vektor1 == vektor2

vektor1 <- c(0,2,4)
vektor2 <- c(0,1,3)
vektor1 == vektor2

vektor1 <- c(0,2,4)
vektor2 <- c(0,1,3,5)
vektor1 == vektor2

# Vektör ile ilgili temel fonksiyonlar
vektor1 <- c(0,2,4,6,8)
length(vektor1)
sum(vektor1)
mean(vektor1)
min(vektor1)
max(vektor1)
median(vektor1)

# seq() fonksiyonu
seq(5,10,2) #alt değer, üst değer, artış miktarı
seq(20,5,-3) #alt değer, üst değer, artış miktarı

# rep() fonksiyonu
rep(10,5) #rep(deger, tekrar)
rep(c(10,30,50), 3) #10 30 50 10 30 50 10 30 50
rep(c(10,30,50), each=3) #10 10 10 30 30 30 50 50 50

# rev() fonksiyonu
rev(c(1,2,3,4,5))

# rank() fonksiyonu
rank(c(100,200,300,10,20,30)) #4 5 6 1 2 3
rank(c(20,30,10,NA)) #NA en son değerdir!
rank(c(NA, 20,30,10,NA)) #Birden fazla NA olabilir!
rank(c(20,30,10,NA), na.last=FALSE) #NA ilk değerdir!

# all() fonksiyonu
vektor1 <- 5:20
vektor1
all(vektor1>1)
all(vektor1>10)

# any() fonksiyonu
vektor1 <- c(1,2,3,4,5)
any(vektor1==5)
any(vektor1==10)

# unique() fonksiyonu
vektor1 <- c(1,1,1,2,2,3,3,3,4,5,5)
unique(vektor1)

# sort() fonksiyonu
vektor1 <- c(5,3,4,2,1)
sort(vektor1)

vektor2 <- c(8,4,2,0,6)
sort(vektor2, decreasing = TRUE)

# dif() fonksiyonu
vektor1 <- c(5,15,35,85,185)
diff(vektor1) #10  20  50 100

vektor2 <- c(10,50,110,350)
diff(vektor2, lag=2) #(110-10, 350-50)

# Vektörler arası işlemler
vektor1 <- c(10,20,30,40,50)
vektor2 <- c(10,10,10,10,10)

vektor1 + vektor2
vektor1 - vektor2
vektor1 * vektor2
vektor1 / vektor2
