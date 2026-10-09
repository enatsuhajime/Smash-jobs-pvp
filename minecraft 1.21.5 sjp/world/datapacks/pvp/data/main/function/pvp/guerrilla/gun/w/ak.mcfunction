#AK47：連射RPM600・3/HS6・10mで しゃがみ2/通常3・移動4倍（弾数30は仮）
#RPM：毎tick RPM を加算し、1200 を超えるごとに1発（20tick × 60秒 = 1200）
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 2 run return 0
execute if score @s GuPress matches 1 run scoreboard players set @s GuRate 600
scoreboard players add @s GuRate 600
execute unless score @s GuRate matches 1200.. run return 0
scoreboard players remove @s GuRate 1200
execute if score @s GuAmmoAk matches ..0 run return run function main:pvp/guerrilla/gun/reload/ak
function main:pvp/guerrilla/gun/shoot/ak
