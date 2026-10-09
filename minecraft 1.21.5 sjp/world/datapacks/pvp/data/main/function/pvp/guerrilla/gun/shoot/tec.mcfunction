#オートピストル（Tec9） 1発分
scoreboard players remove @s GuAmmoTec 1
#拡散角（片側・度×100）：しゃがみ / 通常 / 移動倍率×10
scoreboard players set #sc GuCalc 571
scoreboard players set #ss GuCalc 571
scoreboard players set #mm GuCalc 10
function main:pvp/guerrilla/gun/spread
data modify storage main:guerrilla shot merge value {dmg:2,hs:3,steps:160,pellets:1}
function main:pvp/guerrilla/gun/fire
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1.8
execute if score @s GuAmmoTec matches ..0 run function main:pvp/guerrilla/gun/reload/tec
