# 6. BÖLÜM: AKIŞ KONTROLLERİ

# 6.1 if-else yapısı
if(koşul) {
  # koşul sağlandığında yapılacak iş
} else {
  # koşul sağlanmadığında yapılacak iş
}

#örnek1
sayi <- 5
sayi%%2

if(sayi%%2 == 0){
  print("Girilen sayi, cift sƒayidir!")
} else {
  print("Girilen sayi, cift sayi degildir!")
}

#örnek2
yas <- 20

if(yas>=18){
  print("Girilen yas, resittir!")
} else {
  print("Girilen yas, resit degildir!")
}


# 6.2 for yapısı
for(iteratif in aralık){
  #aralık boyunca yapılacak iş
}

#örnek1
for(i in 1:5){
  print(i)
}

#örnek2
df1 <- data.frame(isim=c("Ali","Burak","Ceren","Seda"), not=c(85,90,75,95))
cat(sprintf("%s isimli ogrencinin notu: %i \n", df1$isim[1], df1$not[1]))
cat(sprintf("%s isimli ogrencinin notu: %i \n", df1$isim[2], df1$not[2]))

for(i in 1:nrow(df1)){
  cat(sprintf("%s isimli ogrencinin notu: %i \n", df1$isim[i], df1$not[i]))
}


# 6.3 while yapısı
#örnek1
x <- 0

while(x < 5){
  print(x)
  x = x+1
}

#örnek2
bakiye <- 100
sample(1:50, 1)

while(bakiye > 0){
  rastgele_sayi = sample(1:bakiye, 1)
  bakiye = bakiye-rastgele_sayi
  cat(sprintf("Kalan bakiye: %i \n", bakiye))
}


# 6.4 repeat-break yapısı
#örnek
x <- 0

repeat{
  x <- x + sample(1:50,1)
  print(x)
  
  if(x>150) break()
}


# 6.5 next yapısı
#örnek
maden_suyu_hacmi <- c(170,180,188,199,198,200,201,200,200,201)

for(i in 1:length(maden_suyu_hacmi)){
  if(i <=5){
    #ilk 5 degeri atla
    next
  }
  
  cat(sprintf("Maden suyu hacmi %i cc'dir \n", maden_suyu_hacmi[i]))
}


#ayni uygulama söyle de yapilabilirdi
for(i in 6:length(maden_suyu_hacmi)){
  cat(sprintf("Maden suyu hacmi %i cc'dir \n", maden_suyu_hacmi[i]))  
}
