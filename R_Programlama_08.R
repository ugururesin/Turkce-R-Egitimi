# 8. BÖLÜM: HATA KONTROLÜ

#örnek
oran_hesapla <- function(pay,payda){
  pay = readline(prompt = "Pay degerini giriniz: ")
  payda = readline(prompt = "Payda degerini giriniz: ")
  return(pay/payda)
}

if(TRUE){
  cat("Oran hesapla fonksiyonu calistiriliyor...")
  oran_hesapla() #burada bir hata oluşursa...
  print("Program calismasini tamamladi!") #...program bu satıra geçmez!
}


#Hata kontrolünde kullanılan fonksiyonlar
# try
# warning()
# stop()
# tryCatch()

# try() fonksiyonu
if(TRUE){
  cat("Oran hesapla fonksiyonu calistiriliyor...")
  try(oran_hesapla(), silent = T) #burada bir hata oluşursa...
  print("Oran hesaplama tamamlandi!") #...program yine de bu satıra geçer!
}


# warning()
ortalama_hesapla <- function(vize,final){
  
  if(vize>100 | final >100){
    warning("100'den buyuk not girildi!!!")
  }
  return(vize*0.4 + final*0.6)
}
ortalama_hesapla(50,110)


# stop()
dosya_sil <- function(dosya_adi){
  if(dosya_adi == "faturalar") {stop("faturalar silinemez!")}
  cat("Su dosya silindi:", dosya_adi)
}

dosya_sil("fotograflar")
dosya_sil("faturalar")


### tryCatch()
# tryCatch yapısı 4 bölümden oluşmaktadır:
# expr (zorunlu): Girilen kodları değerlendirir
# error (opsiyonel): expr'de bir HATA meydana gelirse ne yapılacağını belirtir
# warning (opsiyonel): expr'de bir UYARI meydana gelirse ne yapılacağını belirtir
# finally (opsiyonel): hata/uyarı olsa da olmasa da, tryCatch'den çıkmadan önce çalıştırılır

deger <- "A"
tryCatch(
  expr = {
    read.csv("veriler/anket_verileri/15_ocak_anketi.csv")
    #message(deger^0.5)
    message('Program basari ile calisti!')
  },
  error = function(e){ 
    message('Bir hata olustu!')
    print(e)
  },
  warning = function(uyari_mesaji){
    message('Bir uyari olustu!')
    print(uyari_mesaji)
  },
  finally = {
    message('Program calismasini bitirdi!')
  }
)