#実行者：眠っている敵。体力が減ったら（ダメージを受けたら）起きる
scoreboard players remove @s HsSleep 1
execute store result score #hp HsCalc run data get entity @s Health 10
execute if score #hp HsCalc < @s HsHp run return run function main:pvp/healsniper/dart/wake_hit with storage main:healsniper param.dart
scoreboard players operation @s HsHp = #hp HsCalc
#寝息（1秒ごと）
scoreboard players operation #m HsCalc = @s HsSleep
scoreboard players operation #m HsCalc %= #20 HsCalc
execute if score #m HsCalc matches 0 run particle minecraft:note ~ ~2.2 ~ 0.2 0.1 0.2 0 1 force @a
execute if score #m HsCalc matches 0 run title @s actionbar {text:"Zzz… 眠っている",color:"aqua"}
execute if score @s HsSleep matches ..0 run function main:pvp/healsniper/dart/wake
