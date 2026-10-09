#AK47 1発分
scoreboard players remove @s GuAmmoAk 1
#拡散角（片側・度×100）：しゃがみ / 通常 / 移動倍率×10
scoreboard players set #sc GuCalc 571
scoreboard players set #ss GuCalc 853
scoreboard players set #mm GuCalc 40
function main:pvp/guerrilla/gun/spread
#弾道は表示しない（tracer:0）
data modify storage main:guerrilla shot merge value {dmg:3,hs:6,steps:160,pellets:1,tracer:0}
function main:pvp/guerrilla/gun/fire
data modify storage main:guerrilla shot.tracer set value 1
#マズルフラッシュ：視界をふさがないよう、銃口付近（右下・前方）に小さく出す
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.1 run particle minecraft:small_flame ~ ~ ~ 0.03 0.03 0.03 0.01 3
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.1 run particle minecraft:smoke ~ ~ ~ 0.02 0.02 0.02 0.005 1
#重めの銃声
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.45 1.6
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 0.9 0.6
execute if score @s GuAmmoAk matches ..0 run function main:pvp/guerrilla/gun/reload/ak
