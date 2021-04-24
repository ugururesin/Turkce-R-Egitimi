# 1. BÖLÜM: TEMEL R KOMUTLARI

# 1.1. ARİMETİK OPERATÖRLER: +, -, *, /
50+10 #toplama
30-50 #çıkarma
10*20 #çarpma
50/10 #bölme

50/0 #sıfıra bölme

(50-10)*(8/4) #parantezle işlemler


# 1.2. ATAMA OPERATÖRLERİ: =, <-, ->
x = 5
y <- 10
30 -> z

#Değişken isimleri Türkçe karakter içeremez, sayı veya özel karakter ile başlayamaz!
sinifmevcudu = 20 #sınıfmevcudu olarak yazılama z!
sinif_mevcudu = 30

# 1.3. VERi TİPLERİ
x = 5 #numeric
y = "Merhaba Dunya!" #character
z = 2.75 #numeric
w = "10" #character
a = TRUE #logical 
b = FALSE #logical

print(x) #değişkenin değerini ekrana bastıran komut (fonksiyon)
class(x) #değişkenin veri tipini söyleyen komut (fonksiyon)

#Mantıksal (logical) veriler: TRUE (1), FALSE (0)
a = TRUE
b = FALSE

# 1.4 MANTIKSAL OPERAT??RLER
5 == 5  # == eşitlik operatörü
5 != 4  # != eşitsizlik operatörü
5 > 4   # > büyüktür operatörü
5 < 6   # < küçüktür operatörü
5 >= 5 # >= büyükeşit operatörü
5 <= 7 # <= küçükeşit operatörü

a=10
b=20
x = a>b
y = 5==4

# 1.5 VERİ TİPLERİNİ DÖNÜŞTÜRME
a = 10     #numeric
b = "10"   #character
class(a)
class(b)

c = as.numeric(b) #as.numeric() fonksiyonu değeri, numeric veri tipine dönüştürür
class(c)

d = as.character(a) #as.character() fonksiyonu değeri, character veri tipine dönüştürür
class(d)
