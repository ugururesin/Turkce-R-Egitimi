# 9. BÖLÜM: VERİ OKUMA VE YAZMA

# Hazır verisetleri ile çalışma:
data()
data(package="dplyr")

# iris dataseti
# https://en.wikipedia.org/wiki/Iris_flower_data_set
head(iris)
head(iris, n=3)
tail(iris, n=3)
dim(iris)
str(iris)

# terminalden veri girişi
ogrenci_no <- readline("Ogrenci no giriniz: ")
class(ogrenci_no)
ogrenci_no <- as.numeric(readline("Ogrenci no giriniz: "))
class(ogrenci_no)

# terminalden çoklu veri girişi
ogrenci_no <- scan()
ogrenci_no

ogrenci_isimleri <- scan(what = "") #karakter tipinde veri girmek icin
ogrenci_isimleri

# bir dosyadan veri okuma
getwd()
setwd("/Users/ugururessn/Desktop/r_codes")

list.files("/Users/ugururessn/Desktop/") #istenen dizindeki dosya ve klasörleri görme
list.files(getwd()) #güncel dizindeki dosya ve klasörleri görme
dir() #güncel dizindeki dosya ve klasörleri görme
dir("./veri")

population <- read.delim("./veri/population.txt")
View(population)


# bir dosyaya veri yazma
dim(population)
View(population[1:10,c(1,2,11)])
top10_population_short <- population[1:10,c(1,2,11)]

setwd("./veri")
getwd()
write.table(top10_population_short, file = "top10_population.txt", sep = "\t",
            row.names = FALSE, col.names = colnames(top10_population_short))


# çıktıları bir dosyaya yazma
sink("rastgele_sayilar.txt")
for(i in 1:10){
  print(sample(1:100, 1))
}
sink()

sink("rastgele_sayilar.txt")
for(i in 1:5){
  print(sample(1:100, 1))
}
sink()

sink("rastgele_sayilar.txt", append=TRUE)
for(i in 1:5){
  print(sample(1:100, 1))
}
sink()


# csv (comma seperated values) uzantılı dosya okuma
notlar <- read.csv("notlar.csv")
View(notlar)

notlar2 <- read.csv("notlar2.csv")
View(notlar2)
notlar2 <- read.csv("notlar2.csv", sep=";")
View(notlar2)

notlar2 <- read.csv2("notlar2.csv")
View(notlar2)

# csv (comma seperated values) uzantılı dosya yazma
df1 <- data.frame(ogrenciler=c("ali","berk","duygu","eren"), notlar=c(90,60,75,100))
write.csv(df1, file="not_tablosu.csv")
