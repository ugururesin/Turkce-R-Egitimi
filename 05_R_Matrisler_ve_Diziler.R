# 4. BÖLÜM: MATRİSLER VE DİZİLER

# Matrisler, iki boyutlu bir veri yapısıdır.
# Diziler, ikiden fazla boyutlu olabilen bir veri yapısıdır.

# Boş matris oluşturma
matris1 <- matrix(nrow=5, ncol=3)
matris1
class(matris1)

# Matris oluşturma
vektor1 <- 1:8
matris1 <- matrix(vektor1, nrow=4, ncol=2)
matris1

matris2 <- matrix(vektor1, nrow=4, ncol=2, byrow = T)
matris2

# Matris elemanlarına erişme
matris1[1,1]
matris1[2,2]
matris1[3,2]

# Matrisleri birleştirme
(matris1 <- matrix(1:9, nrow=3, ncol=3))
(matris2 <- matrix(10:12, nrow=3))
(matris3 <- t(matris2))

cbind(matris1, matris2) #c:column, sütun
rbind(matris1, matris3) #r:row, satır

# Köşegen matris oluşturma
diag(10, nrow=3)
diag(c(1,2,3,4), nrow=4)

# Temel fonksiyonlar
matris1 <- matrix(1:10, nrow=5)
matris1
max(matris1)
min(matris1)
sum(matris1)
colSums(matris1)
rowSums(matris1)

# Matris satır-sütun isimleri
matris1 <- matrix(10:15, nrow = 3)
matris1
dimnames(matris1) <- list(c("a","b","c"), c("x","y"))
matris1


# Diziler (Array)
vektor1 = c(1,2,3,4)
vektor2 = c(10,20,30,40,50,60,70,80)
vektor3 = c(100,200,300,400)
dizi1 = array(c(vektor1, vektor2, vektor3), dim=c(4,3,3))
dizi1

# Matris ve dizilere fonksiyon uygulama (apply)
(matris1 <- matrix(1:12, nrow = 3))
apply(matris1, MARGIN=1, FUN = sum) #MARGIN=1 satır bazlı uygulama
apply(matris1, MARGIN=2, FUN = sum) #MARGIN=2 sütun bazlı uygulama
