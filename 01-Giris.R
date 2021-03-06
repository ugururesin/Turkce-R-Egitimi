# R PROGRAMLAMA NOTLARI - G??R????
###############################

# AR??TMET??K OPERAT??RLER
5-1
5+2
3*2
8/2

# ATAMA OPERAT??RLER??
ogrenci_sayisi = 50
ogrenci_sayisi <- 50
50 -> ogrenci_sayisi
(ogrenci_sayisi = 50)
assign("deger",5)

# VER?? T??PLER??
x = 100
class(x)

y = 3.5
class(y)

z = "Ali"
class(z)

z = "Merhaba D??nya!"
class(z)

w = TRUE
class(w)

w = FALSE
class(w)

q = 5+2i
class(q)

a = 20L
b = 2.75
c = "Ali"
is.integer(a)

# MANTIKSAL ????LEMLER
a = 100
b = 200

a == b
a < b
a > b
a <= b
a >= b
a != b

a > 50 & b > 300
a > 50 | b > 300

# VEKT??RLER
numaralar <- c(10,20,30,40,50)
numaralar

numaralar[1]
numaralar[3]
numaralar[1:3]
numaralar[-1]
numaralar[-c(1:3)]
numaralar[-c(1,2,5)]

assign("sayilar", c(100,200,300))
sayilar

isimler <- c("Ali","Burak","Ceren","Duygu")
isimler

# VEKT??RLERLE ????LEMLER
v <- c(5,10,15,20)
v*5
v
v <- v*5
v
v+10

x <- c(1,2,3,4,5)
y <- c(6,7,8,9)
z <- c(x,y)
z

a <- c(10,20,30)
length(a)

b <- c("ali", "berk", "can", "duygu", "erdem")
length(b)

