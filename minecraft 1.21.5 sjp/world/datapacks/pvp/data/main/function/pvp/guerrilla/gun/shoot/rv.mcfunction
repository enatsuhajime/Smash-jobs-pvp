#リボルバー 1発分
scoreboard players remove @s GuAmmoRv 1
#拡散角（片側・度×100）：しゃがみ / 通常 / 移動倍率×10
scoreboard players set #sc GuCalc 286
scoreboard players set #ss GuCalc 286
scoreboard players set #mm GuCalc 40
function main:pvp/guerrilla/gun/spread
data modify storage main:guerrilla shot merge value {dmg:8,hs:15,steps:160,pellets:1}
function main:pvp/guerrilla/gun/fire
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 2.0
execute if score @s GuAmmoRv matches ..0 run function main:pvp/guerrilla/gun/reload/rv
