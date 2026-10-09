#実行者：爆撃弓の着弾点marker。警告表示の後、10tickごとに3回爆撃（間隔・威力は仮）
scoreboard players remove @s GuTimer 1
particle minecraft:dust{color:[1.0,0.1,0.1],scale:2.0} ~ ~0.2 ~ 2 0 2 0 4 force
execute if score @s GuTimer matches 1.. run return 0
function main:pvp/guerrilla/fx/explode {r:4,d:10}
scoreboard players remove @s GuCount 1
scoreboard players set @s GuTimer 10
execute if score @s GuCount matches ..0 run kill @s
