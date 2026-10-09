#SMG（P90）：連射RPM960・2/HS2・10mで しゃがみ2/通常4・移動1.5倍（弾数50は仮）
#RPM：毎tick RPM を加算し、1200 を超えるごとに1発（20tick × 60秒 = 1200）
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 4 run return 0
execute if score @s GuPress matches 1 run scoreboard players set @s GuRate 240
scoreboard players add @s GuRate 960
execute unless score @s GuRate matches 1200.. run return 0
scoreboard players remove @s GuRate 1200
execute if score @s GuAmmoP90 matches ..0 run return run function main:pvp/guerrilla/gun/reload/p90
function main:pvp/guerrilla/gun/shoot/p90
