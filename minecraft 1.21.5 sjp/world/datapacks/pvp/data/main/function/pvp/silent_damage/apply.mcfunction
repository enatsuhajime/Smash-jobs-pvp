#実行者：このtickにダメージを受けたプレイヤー。同じtickに2回呼ばれても合計で計算し直す
attribute @s minecraft:max_health modifier remove main:silent_damage
execute store result score #h SdCalc run data get entity @s Health 100
execute store result score #m SdCalc run attribute @s minecraft:max_health get 100
#増減 = (今の体力 − 合計) − 最大体力
scoreboard players operation #h SdCalc -= @s SdPend
scoreboard players operation #h SdCalc -= #m SdCalc
execute store result storage main:silent_damage tmp.cut double 0.01 run scoreboard players get #h SdCalc
function main:pvp/silent_damage/apply_m with storage main:silent_damage tmp
scoreboard players operation @s SdCutT = #now SdCalc
tag @s add SdCut
tag @s remove SdPending
