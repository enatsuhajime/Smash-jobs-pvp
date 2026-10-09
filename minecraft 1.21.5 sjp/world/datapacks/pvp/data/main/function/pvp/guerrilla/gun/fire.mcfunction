#弾を撃つ（実行者：射手。storage main:guerrilla shot の n/dmg/hs/steps/pellets を使う）
tag @s add GuShooter
scoreboard players set #team GuCalc 0
execute if entity @s[team=Blue] run scoreboard players set #team GuCalc 1
execute if entity @s[team=Red] run scoreboard players set #team GuCalc 2
execute store result score #pel GuCalc run data get storage main:guerrilla shot.pellets
execute anchored eyes positioned ^ ^ ^ run function main:pvp/guerrilla/gun/pellet_loop
execute anchored eyes positioned ^ ^-0.1 ^0.6 run particle minecraft:smoke ~ ~ ~ 0.02 0.02 0.02 0.01 2
tag @s remove GuShooter
