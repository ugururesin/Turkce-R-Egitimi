ortalama_hesapla <- function(vize, final){
  if(vize>=0 & final>=0){
    print(paste("Ortalama notunuz:", (vize+final)/2))
  }else{
    print("Vize ve final notu negatif olamaz!")
  }
}