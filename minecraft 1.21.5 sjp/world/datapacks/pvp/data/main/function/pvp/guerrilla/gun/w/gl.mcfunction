#Garill：連射RPM500・3/HS4・10mで しゃがみ2/通常3・移動4倍（弾数35は仮）
#RPM：毎tick RPM を加算し、1200 を超えるごとに1発（20tick × 60秒 = 1200）
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 3 run return 0
execute if score @s GuPress matches 1 run scoreboard players set @s GuRate 700
scoreboard players add @s GuRate 500
execute unless score @s GuRate matches 1200.. run return 0
scoreboard players remove @s GuRate 1200
execute if score @s GuAmmoGl matches ..0 run return run function main:pvp/guerrilla/gun/reload/gl
function main:pvp/guerrilla/gun/shoot/gl
