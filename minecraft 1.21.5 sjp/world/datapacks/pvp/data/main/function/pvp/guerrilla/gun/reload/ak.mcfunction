#AK47 リロード開始（予備マガジンを1つ使う）
execute if score @s GuReload matches 1.. run return 0
execute unless score @s GuMagAk matches 1.. run return run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.5 2
scoreboard players set @s GuReloadW 2
scoreboard players set @s GuReload 40
playsound minecraft:item.crossbow.loading_start player @a ~ ~ ~ 0.8 1.2
