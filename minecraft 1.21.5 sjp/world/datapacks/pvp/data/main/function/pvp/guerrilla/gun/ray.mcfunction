#0.25ブロックずつ進むレイキャスト。敵プレイヤーの当たり判定内に入ったら命中
execute if score #team GuCalc matches 1 as @e[type=player,team=Red,gamemode=!spectator,distance=..3] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] positioned ~0.99 ~0.99 ~0.99 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/guerrilla/gun/hit
execute if score #team GuCalc matches 2 as @e[type=player,team=Blue,gamemode=!spectator,distance=..3] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] positioned ~0.99 ~0.99 ~0.99 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/guerrilla/gun/hit
execute if score #hit GuCalc matches 1 run return 0
#曳光（2ブロックごと・全銃共通）。撃った本人には見せず、周りのプレイヤーにだけ表示する
scoreboard players add #tr GuCalc 1
execute if score #tr GuCalc matches 8.. run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=!GuShooter]
#撃った本人には、クロスヘアから離れた先に小さな弾だけを見せる（1ブロックごと）
scoreboard players add #d GuCalc 1
execute if score #d GuCalc >= #tfrom GuCalc if score #tr GuCalc matches 4 run function main:pvp/guerrilla/gun/self_trail with storage main:guerrilla param.common
execute if score #d GuCalc >= #tfrom GuCalc if score #tr GuCalc matches 8.. run function main:pvp/guerrilla/gun/self_trail with storage main:guerrilla param.common
execute if score #tr GuCalc matches 8.. run scoreboard players set #tr GuCalc 0
scoreboard players remove #steps GuCalc 1
execute if score #steps GuCalc matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #main:gu_passable run function main:pvp/guerrilla/gun/ray
