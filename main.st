
(* 1. Temel Seviye: Otomatik Kapı Kontrol Sistemi
Amaç: Bir sensör ve motor kullanarak otomatik kapı açma ve kapama sistemi tasarlamak.

Program:

Sensör bir hareket algıladığında motoru çalıştırın (kapıyı açın).
Sensör bir süre hareket algılamazsa motoru ters yönde çalıştırın (kapıyı kapatın).
Motor1: Geri Açılıcak
Motor2: İleri Kapanıcak
 *)



PROGRAM OtomatikKapiKontrolSistemi
VAR
    Sensor1: BOOL; (* Dış Cephe Sensörü *)
    Sensor2: BOOL; (* İç Cephe Sensörü *)
    MotorSurucuIleri: BOOL; (* Motor İleri Yön Sürücüsü *)
    MotorSurucuGeri: BOOL; (* Motor Geri Yön Sürücüsü *)

    timer: TON; (* TON(Timer On Delay) tipinde bir değişken tanımlanır *)
    timer_active: BOOL := FALSE; (* Timer'ın aktif olup olmadığını takip eden bir değişken *)
    delay_time: TIME := T#5s; (* Bekleme süresi, örneğin 5 saniye *)
END_VAR

(* TON fonksiyonunu kullanarak 5 saniye gecikme sağlama *)
timer(IN := TRUE, PT := delay_time);
timer_active := timer.Q;

(* Sensörlerin durumlarına göre motor yönlendirme *)
IF Sensor1 THEN
    MotorSurucuGeri := TRUE;
    MotorSurucuIleri := FALSE;
ELSIF Sensor2 THEN
    MotorSurucuGeri := FALSE;
    MotorSurucuIleri := TRUE;
ELSE
    IF timer_active THEN
        MotorSurucuGeri := FALSE;
        MotorSurucuIleri := FALSE;
    END_IF;
END_IF;

END_PROGRAM
