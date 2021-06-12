# EK-BÖLÜM: EKRANA DEĞER BASMA

# print() komutu
print("Merhaba dunya!")

x <- 125
print(x)


# paste() komutu
mesaj <- "Merhaba"
x <- 50
y <- 100
z <- 90
mesaj2 <- "Öğrencilerin aldığı notlar: "

birlesik_mesaj <- paste(mesaj, "\n", mesaj2, x, " ", y, " ", z , sep="")
class(birlesik_mesaj)

#cat() komutu
cat(paste(mesaj, "\n", mesaj2, x, " ", y, " ", z , sep=""))


#sprintf() komutu

### VERİ TİPLERİ
#1,2,3,4,5,6,100,200,-100,-1000 tamsayılar --> integer (i)
#1.10, 3.25, -0.2 ondalıklı sayılar --> float (f)
#"Ali" "Merhaba dünya" "R programlama dili" karakter --> string (s)

isim <- "Erdem"
ders_sirasi <- 2
cat(sprintf("Merhaba! %s R eğitiminin %i. dersine hoşgeldiniz",isim,ders_sirasi))

yaricap <- 10
alan <- pi*yaricap^2
cat(sprintf("Yarıçapı %.2f olan dairenin alanı %.2f", yaricap, alan))
