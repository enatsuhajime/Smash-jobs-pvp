#リボルバー：単発RPM267・6発・8/HS15・10mで1×1（しゃがんでも同じ）・移動4倍
#連射間隔中のクリックは要求（GuReq）を残し、撃てるようになった時点で発射する
execute if score @s GuCool matches 1.. run return 0
tag @s remove GuReq
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 6 run return 0
execute if score @s GuAmmoRv matches ..0 run return run function main:pvp/guerrilla/gun/reload/rv
scoreboard players set @s GuCool 5
function main:pvp/guerrilla/gun/shoot/rv
