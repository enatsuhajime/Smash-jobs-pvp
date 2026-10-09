#オートピストル（Tec9）：単発RPM400・移動で精度低下なし（ダメージ2/HS3・拡散2・弾数20は仮）
#連射間隔中のクリックは要求（GuReq）を残し、撃てるようになった時点で発射する
execute if score @s GuCool matches 1.. run return 0
tag @s remove GuReq
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 5 run return 0
execute if score @s GuAmmoTec matches ..0 run return run function main:pvp/guerrilla/gun/reload/tec
scoreboard players set @s GuCool 3
function main:pvp/guerrilla/gun/shoot/tec
