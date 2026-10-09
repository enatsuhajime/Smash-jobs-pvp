#AK47 1発分
scoreboard players remove @s GuAmmoAk 1
#拡散角（片側・度×100）：しゃがみ / 通常 / 移動倍率×10
scoreboard players set #sc GuCalc 571
scoreboard players set #ss GuCalc 853
scoreboard players set #mm GuCalc 40
function main:pvp/guerrilla/gun/spread
data modify storage main:guerrilla shot merge value {dmg:3,hs:6,steps:160,pellets:1}
function main:pvp/guerrilla/gun/fire
#重めの銃声
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.45 1.6
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 0.9 0.6
execute if score @s GuAmmoAk matches ..0 run function main:pvp/guerrilla/gun/reload/ak
