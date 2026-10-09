#弾を撃つ（実行者：射手。storage main:guerrilla shot の n/dmg/hs/steps/pellets/tracer を使う）
tag @s add GuShooter
scoreboard players set #team GuCalc 0
execute if entity @s[team=Blue] run scoreboard players set #team GuCalc 1
execute if entity @s[team=Red] run scoreboard players set #team GuCalc 2
execute store result score #pel GuCalc run data get storage main:guerrilla shot.pellets
#tracer:0 の銃は弾道を表示しない
scoreboard players set #trace GuCalc 1
execute if data storage main:guerrilla shot{tracer:0} run scoreboard players set #trace GuCalc 0
execute anchored eyes positioned ^ ^ ^ run function main:pvp/guerrilla/gun/pellet_loop
execute if score #trace GuCalc matches 1 anchored eyes positioned ^ ^-0.1 ^0.6 run particle minecraft:smoke ~ ~ ~ 0.02 0.02 0.02 0.01 2
tag @s remove GuShooter
