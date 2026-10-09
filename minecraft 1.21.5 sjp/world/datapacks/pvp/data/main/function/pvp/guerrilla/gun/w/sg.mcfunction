#ショットガン：単発・RPM70・5発・10粒・1粒2/HS3・5mで しゃがみ2/通常4・移動2倍
#連射間隔中のクリックは要求（GuReq）を残し、撃てるようになった時点で発射する
execute if score @s GuCool matches 1.. run return 0
tag @s remove GuReq
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 1 run return 0
execute if score @s GuAmmoSg matches ..0 run return run function main:pvp/guerrilla/gun/reload/sg
scoreboard players set @s GuCool 17
function main:pvp/guerrilla/gun/shoot/sg
