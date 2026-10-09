#ショットガン 1発分
scoreboard players remove @s GuAmmoSg 1
#拡散角（片側・度×100）：しゃがみ / 通常 / 移動倍率×10
scoreboard players set #sc GuCalc 1131
scoreboard players set #ss GuCalc 2180
scoreboard players set #mm GuCalc 20
function main:pvp/guerrilla/gun/spread
data modify storage main:guerrilla shot merge value {dmg:2,hs:3,steps:80,pellets:10}
function main:pvp/guerrilla/gun/fire
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.6 1.8
execute if score @s GuAmmoSg matches ..0 run function main:pvp/guerrilla/gun/reload/sg
