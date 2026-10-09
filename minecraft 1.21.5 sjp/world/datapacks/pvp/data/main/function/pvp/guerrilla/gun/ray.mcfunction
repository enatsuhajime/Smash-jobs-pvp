#0.25ブロックずつ進むレイキャスト。敵プレイヤーの当たり判定内に入ったら命中
execute if score #team GuCalc matches 1 as @e[type=player,team=Red,gamemode=!spectator,distance=..3] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] positioned ~0.99 ~0.99 ~0.99 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/guerrilla/gun/hit
execute if score #team GuCalc matches 2 as @e[type=player,team=Blue,gamemode=!spectator,distance=..3] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] positioned ~0.99 ~0.99 ~0.99 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/guerrilla/gun/hit
execute if score #hit GuCalc matches 1 run return 0
#弾の表示（全員に見える小さな弾。trail_from ブロック先から1ブロックごと）
scoreboard players add #d GuCalc 1
scoreboard players add #tr GuCalc 1
execute if score #tr GuCalc matches 4.. if score #d GuCalc >= #tfrom GuCalc run function main:pvp/guerrilla/gun/trail with storage main:guerrilla param.common
execute if score #tr GuCalc matches 4.. run scoreboard players set #tr GuCalc 0
scoreboard players remove #steps GuCalc 1
execute if score #steps GuCalc matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #main:gu_passable run function main:pvp/guerrilla/gun/ray
