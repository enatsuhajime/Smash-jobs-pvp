#実行者：ナイフで攻撃された敵
scoreboard players set @s GuAssist 140
function main:pvp/guerrilla/death/store_pos
#向きの差が±60度以内（同じ方向を向いている＝背後から）ならバックスタブ（角度は仮）
execute store result score #a GuCalc run data get entity @a[tag=GuKnifer,limit=1] Rotation[0]
execute store result score #v GuCalc run data get entity @s Rotation[0]
scoreboard players operation #a GuCalc -= #v GuCalc
scoreboard players add #a GuCalc 540
scoreboard players operation #a GuCalc %= #360 GuCalc
scoreboard players remove #a GuCalc 180
execute if score #a GuCalc matches -60..60 run function main:pvp/guerrilla/knife/backstab
