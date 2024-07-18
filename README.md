# 🚪 Otomatik Kapı Kontrol Sistemi

Bu proje, sensör ve motor kullanarak otomatik bir kapı açma ve kapama sistemi tasarlamayı amaçlayan bir temel seviye otomasyon örneğidir. Proje, kapının hareket algıladığında otomatik olarak açılmasını ve belirli bir süre hareket algılanmadığında kapanmasını sağlar.

## Özellikler

- **Hareket Algılama:** Dış ve iç cephe sensörleri ile hareket algılama.
- **Otomatik Açma:** Hareket algılandığında kapıyı otomatik olarak açma.
- **Otomatik Kapatma:** Belirli bir süre hareket algılanmadığında kapıyı otomatik olarak kapatma.
- **Gecikme Süresi:** TON fonksiyonu ile 5 saniye gecikme süresi.
- **Motor Kontrolü:** İleri ve geri motor sürücüleri ile kapının açılıp kapanmasını sağlama.

## Kullanım

1. **Sensör Tetikleme:** 
    - **Sensor1:** Dış cephe sensörü, hareket algıladığında kapıyı açar.
    - **Sensor2:** İç cephe sensörü, hareket algılandığında kapıyı kapatır.
2. **Gecikme Süresi:** Hareket algılanmadığında, kapı 5 saniye sonra kapanır.
3. **Motor Kontrolü:** 
    - **MotorSurucuGeri:** Kapıyı açmak için kullanılır.
    - **MotorSurucuIleri:** Kapıyı kapatmak için kullanılır.

## Nasıl Çalışır?

1. Sensör1 hareket algıladığında, MotorSurucuGeri aktif hale gelir ve kapı açılır.
2. Sensör2 hareket algıladığında, MotorSurucuIleri aktif hale gelir ve kapı kapanır.
3. Hiçbir hareket algılanmadığında, 5 saniye sonra kapı kapanır.
