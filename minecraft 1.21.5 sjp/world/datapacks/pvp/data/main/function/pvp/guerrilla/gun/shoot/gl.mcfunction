#Garill 1発分
scoreboard players remove @s GuAmmoGl 1
#拡散角（片側・度×100）：しゃがみ / 通常 / 移動倍率×10
scoreboard players set #sc GuCalc 571
scoreboard players set #ss GuCalc 853
scoreboard players set #mm GuCalc 40
function main:pvp/guerrilla/gun/spread
data modify storage main:guerrilla shot merge value {dmg:3,hs:4,steps:160,pellets:1}
function main:pvp/guerrilla/gun/fire
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.7 1.3
execute if score @s GuAmmoGl matches ..0 run function main:pvp/guerrilla/gun/reload/gl
