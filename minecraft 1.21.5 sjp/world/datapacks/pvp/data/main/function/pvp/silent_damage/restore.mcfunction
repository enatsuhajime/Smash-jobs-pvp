#実行者：前のtickに最大体力を下げたプレイヤー。最大体力を元に戻す（体力は減ったまま）
attribute @s minecraft:max_health modifier remove main:silent_damage
scoreboard players set @s SdPend 0
tag @s remove SdCut
