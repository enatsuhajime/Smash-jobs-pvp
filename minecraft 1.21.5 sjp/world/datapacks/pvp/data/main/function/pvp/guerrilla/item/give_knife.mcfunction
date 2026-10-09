#ナイフ（1撃のダメージは config の param.knife.damage）。プレイヤーの基礎攻撃力1を差し引いた値を武器に付ける
execute store result score #k GuCalc run data get storage main:guerrilla param.knife.damage
scoreboard players remove #k GuCalc 1
execute store result storage main:guerrilla tmp.amount int 1 run scoreboard players get #k GuCalc
function main:pvp/guerrilla/item/give_knife_m with storage main:guerrilla tmp
