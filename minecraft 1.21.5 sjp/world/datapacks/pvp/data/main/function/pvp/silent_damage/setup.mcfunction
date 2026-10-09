#カメラの揺れなしダメージ（silent_damage）で使うscoreboardと定数。ゲリラ兵・回復スナイパーの config から呼ぶ
scoreboard objectives add SdCalc dummy
scoreboard objectives add SdPend dummy
scoreboard objectives add SdCutT dummy
scoreboard players set #100 SdCalc 100
