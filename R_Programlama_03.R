# 3. BÖLÜM: LİSTELER

# Listeler, farklı tipte veriler içerebilen özel bir vektör türüdür.

# Boş liste oluşturma
liste1 <- list()
liste1
class(liste1)

# Temel liste fonksiyonları
liste1 <- list(1,2,3,"A","B","C",TRUE,FALSE)
class(liste1)

length(liste1)
str(liste1)

# Liste elemanlarını isimlendirme
liste1 <- list(Ali = 70, Cansu = 90, Deniz = 75, Erdem = 80)
liste1 

liste1 <- list(70,90,75,80)
names(liste1) <- c("Ali", "Cansu", "Deniz", "Erdem")
liste1

# Liste elemanlarını seçme
liste1 <- list(Ali = 70, Cansu = 90, Deniz = 75, Erdem = 80)
liste1$Ali
liste1[1]
liste1[1:3]
liste1[-c(1,2)]

vize_final_notlari <- list(Ali=c(50,90), Can=c(70,80), Deniz=c(100,90))
vize_final_notlari
vize_final_notlari$Ali
vize_final_notlari$Ali[2]
class(vize_final_notlari)

# Listeye eleman ekleme
vize_final_notlari <- list(Ali=c(50,90), Can=c(70,80), Deniz=c(100,90))
vize_final_notlari$Gizem <- c(100,100)
vize_final_notlari

# Listeden eleman çıkarma
vize_final_notlari <- list(Ali=c(50,90), Can=c(70,80), Deniz=c(100,90))
vize_final_notlari$Ali <- NULL
vize_final_notlari

# Listelere fonksiyon uygulama
# lapply : list-apply, listenin tüm elemanlarına fonksiyon uygulanır
liste1 <- list(a=1:10, b=10:40, c=c(T,T,F,F)) #Hatırlatma: T=1, F=0!
lapply(liste1, mean)

liste2 <- list(a=seq(1,9,2), b=seq(0,8,2))
lapply(liste2, function(x) x^2)

# sapply: simplify-apply, listenin tüm elemanlarına fonksiyon uygulanır, sonuç daha okunur yazılır
liste2 <- list(a=seq(1,9,2), b=seq(0,8,2))
sapply(liste2, function(x) x^2)

# mapply: multi-apply, birden fazla listeye fonksiyon uygulanır
liste1 <- list(1:5)
liste2 <- list(rep(10,5))
mapply(sum, liste1, liste2) #önce fonksiyon, ardından listeler

liste1 <- list(a=1:5, b=11:15)
liste2 <- list(x=10, y=100)
mapply(sum, liste1, liste2) #önce fonksiyon, ardından listeler