#実行者：管理marker。前進し、ドラゴンを追従させ、一定間隔でクリーパーを落とす
scoreboard players remove @s GuTimer 1
tp @s ^ ^ ^0.8
scoreboard players operation #pid GuCalc = @s GuPid
#ドラゴンのモデルは向きと逆に飛ぶため、進行方向の逆を向かせる（実機で逆なら ^ ^ ^10 に変更）
execute at @s rotated as @s as @e[type=ender_dragon,tag=GuDragon] if score @s GuPid = #pid GuCalc run tp @s ~ ~ ~ facing ^ ^ ^-10
scoreboard players add @s GuCount 3
#仮：16/3tickごとに投下（旧8tickの1.5倍の数）
execute if score @s GuCount matches 16.. run function main:pvp/guerrilla/reward/carpet_drop
execute if score @s GuTimer matches ..0 run function main:pvp/guerrilla/reward/carpet_end
