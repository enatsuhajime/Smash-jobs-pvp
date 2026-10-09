#弾を撃つ（実行者：射手。storage main:guerrilla shot の n/dmg/hs/steps/pellets を使う）
tag @s add GuShooter
scoreboard players set #team GuCalc 0
execute if entity @s[team=Blue] run scoreboard players set #team GuCalc 1
execute if entity @s[team=Red] run scoreboard players set #team GuCalc 2
execute store result score #pel GuCalc run data get storage main:guerrilla shot.pellets
execute anchored eyes positioned ^ ^ ^ run function main:pvp/guerrilla/gun/pellet_loop
#マズルフラッシュ（全銃共通）：クロスヘアにかぶらないよう、銃口付近（右下・前方）に小さく出す
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.1 run particle minecraft:small_flame ~ ~ ~ 0.03 0.03 0.03 0.01 3
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.1 run particle minecraft:smoke ~ ~ ~ 0.02 0.02 0.02 0.005 1
tag @s remove GuShooter
