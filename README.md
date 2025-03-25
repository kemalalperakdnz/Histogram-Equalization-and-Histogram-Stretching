# Histogram-Equalization-and-Histogram-Stretching
Mersin Üniversitesi Dijital Görüntü Çözümleme Dersi Ödevi
Histogram Eşitleme ve Histogram Stretching Ödevi
Bu çalışmada, kullanıcı tarafından sağlanan 'kemalalper.jpg' görüntüsü üzerinden iki farklı görüntü işleme yöntemi uygulanacaktır:
1. Histogram Eşitleme (Histogram Equalization)
2. Histogram Gerdirme (Histogram Stretching)

Her iki yöntem de hem manuel olarak, hem de MATLAB’in hazır fonksiyonlarıyla uygulanacak ve sonuçlar karşılaştırılacaktır.
1. Görüntünün Hazırlanması
Görüntü 'imread' komutu ile okunmuş ve gri seviye forma dönüştürülmüştür. Renkli görüntü işlemleri için ise 0-1 aralığında normalize edilmiştir.
2. Histogram Eşitleme
Gri seviye görüntü üzerinde önce histogram, ardından kümülatif dağılım fonksiyonu (CDF) hesaplanarak, manuel olarak histogram eşitleme işlemi gerçekleştirilmiştir. Sonuç, MATLAB'in 'histeq' fonksiyonu ile karşılaştırılmıştır.
3. Histogram Gerdirme (Stretching)
R, G ve B kanalları ayrı ayrı işlenerek her bir kanal 0-1 aralığına normalize edilmiştir. Bu şekilde her kanalın dinamik aralığı maksimuma çıkarılmıştır. Karşılaştırma için MATLAB’in 'imadjust' fonksiyonu kullanılmıştır.
4. Sonuçların Karşılaştırılması
Görüntüler ve histogramlar karşılaştırmalı olarak görselleştirilmiştir. Manuel işlemler ile MATLAB fonksiyonlarının ürettiği sonuçlar arasında görsel kalite açısından yüksek benzerlik gözlemlenmiştir.
5. Tartışma
Histogram eşitleme işlemi, görüntünün kontrastını artırmak amacıyla uygulanır. Manuel yöntemle ve MATLAB’in 'histeq' fonksiyonu ile yapılan işlemler benzer sonuçlar üretmiştir.

Histogram gerdirme işleminde ise her kanal (R, G, B) ayrı ayrı normalize edilerek daha geniş parlaklık aralığına yayılmıştır. Bu da renkli görüntünün daha canlı ve kontrastlı görünmesini sağlamıştır.

MATLAB’in 'imadjust' fonksiyonu ile yapılan stretching işlemi, manuel yönteme göre daha hassas sınırlar belirleyerek benzer fakat daha optimize sonuçlar verebilir.

Sonuç olarak, her iki yöntem görüntünün görsel kalitesini artırmakta başarılıdır ve kullanım senaryosuna göre tercih edilmelidir.

