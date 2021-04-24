# 5. BÖLÜM: VERİ ÇERÇEVESİ (TABLO VERİ)

# Veri çerçevesi (dataframe), Excel'deki tablolara benzer bir veri tipidir.

# Dataframe oluşturma
df1 = data.frame(vize=c(50,90,85,40), final=c(70,80,90,60))
df1

# Veri çerçevesi elemanlarına erişme
df1[1] #1.sütun
df1[1,2] #1.satır, 2.sütun
df1[3,2] #3.satır, 2.sütun
df1$vize
df1$vize[4]

# Satır ve sütun sayısı bulma
nrow(df1)
ncol(df1)
dim(df1)

# Veri çerçevesine eleman ekleme
df1[5,]
df1[5,] <- c(100,100)
df1

df1$ogrenci <- c("Ali","Can","Cem","Ebru","Seda")
df1

# Sütunların yerini değiştirme
yeni_sira <- c("ogrenci","vize","final")
df1[,yeni_sira]
df1 <- df1[,yeni_sira]
df1

# Temel fonksiyonlar
str(df1)
subset(df1, select=c("ogrenci","final"))

# Sütunları isimlendirme
df2 = data.frame(11:15, 21:25, 31:35)
df2

colnames(df2)
colnames(df2) <- c("x", "y", "z")
df2

# Veri çerçevelerini birleştirme
df1
df2$ogrenci <- df1$ogrenci
merge(df1,df2, by="ogrenci")

df1 <- data.frame(ogrenci=c("Ali","Can","Deniz", "Evren"), no=c(101,102,103,104))
df2 <- data.frame(ogrenci=c("Ali","Can","Deniz"), vize=c(70,90,100))
merge(df1, df2, by="ogrenci")

df1 <- data.frame(ogrenci=c("Ali","Can","Deniz", "Evren"), no=c(101,102,103,104))
df2 <- data.frame(ogrenci=c("Ali","Can","Deniz","Evren"), vize=c(70,90,100,NA))
merge(df1, df2, by="ogrenci")
