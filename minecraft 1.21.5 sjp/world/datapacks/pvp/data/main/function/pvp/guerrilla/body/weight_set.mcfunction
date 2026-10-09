#仮の倍率：ライフル-15%・ショットガン-10%・SMG+10%・ピストル+15%（基礎0.1に対して）
function main:pvp/guerrilla/body/weight_clear
$tag @s add $(t)
tag @s add GuWt
$attribute @s minecraft:movement_speed modifier add main:gu_weight $(v) add_multiplied_base
