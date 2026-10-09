#ショットガン リロード開始（予備弾無制限）
execute if score @s GuReload matches 1.. run return 0
scoreboard players set @s GuReloadW 1
scoreboard players set @s GuReload 30
playsound minecraft:item.crossbow.loading_start player @a ~ ~ ~ 0.8 1.2
