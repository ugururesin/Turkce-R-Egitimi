# 7. BÖLÜM: FONKSİYONLAR

# 7.1: fonksiyon tanımlama
selamla <- function(isim){
  print(paste("Merhaba", isim))
}

selamla("Gizem")


# 7.2: varsayılan argüman
selamla <- function(isim="kullanici!"){
  print(paste("Merhaba",isim))
}

selamla() #varsayılan argüman ile çalışır
selamla("Ali Beyaz") #argüman "Ali Beyaz" olarak çalışır


# 7.3: return ile deger dondurme
ortalama <- function(sayi1,sayi2){
  return((sayi1+sayi2)/2)
}
ortalama(10,20)

ortalama <- function(sayi1,sayi2){ return((sayi1+sayi2)/2)}
ortalama(10,20)


# 7.4: farklı değerler
ortalama_hesapla <- function(vize, final){
  if(vize>=0 & final>=0){
    print(paste("Ortalama notunuz:", (vize+final)/2))
  }else{
    print("Vize ve final notu negatif olamaz!")
  }
}

ortalama_hesapla(40,60)
ortalama_hesapla(40,-60)


# 7.5: uyarı (warning)
ortalama_hesapla <- function(vize, final){
  if(vize>=0 & final>=0){
    print(paste("Ortalama notunuz:", (vize+final)/2))
  }else{
    warning("Vize ve final notu negatif olamaz!")
  }
}
ortalama_hesapla(40,-60)


# 7.6: fonksiyon icindeki degerler
daire_alani <- function(yaricap){
  pi_degeri = 3.1415
  return (pi_degeri*yaricap^2)
}

daire_alani(10)
pi_degeri #sadece fonksiyon icide tanımlıdır! fonksiyonun dışında kullanılamaz!


# 7.7: ic ice fonksiyonlar
daire_alani <- function(yaricap){
  pi_degeri = 3.1415
  return (pi_degeri*yaricap^2)
}

daire_cevresi <- function(yaricap){
  pi_degeri = 3.1415
  return(2*pi_degeri*yaricap)
}

daire_analizi <- function(cap){
  alan <- daire_alani(cap/2)
  cevre <- daire_cevresi(cap/2)
  cat(sprintf("Dairenin alani: %.2f \nDairenin cevresi: %.2f", alan, cevre))
}

daire_analizi(10)

# 7.7 fonksiyon çağırma
setwd(current_directory) #bu R kodu hangi dizindeyse, o dizini atayın!
source("./fonksiyonlar/ortalama_hesapla.R")
