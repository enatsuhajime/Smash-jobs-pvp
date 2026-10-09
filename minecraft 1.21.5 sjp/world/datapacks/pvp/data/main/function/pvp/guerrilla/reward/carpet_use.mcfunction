#実行者：ゲリラ兵。頭上15ブロックに向いている方向へ進む管理markerとドラゴンを出す
item replace entity @s weapon.mainhand with minecraft:air
scoreboard players add #pid GuPid 1
execute rotated ~ 0 positioned ~ ~15 ~ run summon marker ~ ~ ~ {Tags:["GuCarpet","GuNew"]}
execute rotated ~ 0 run tp @e[type=marker,tag=GuNew,limit=1] ~ ~15 ~ facing ^ ^15 ^10
scoreboard players operation @e[type=marker,tag=GuNew] GuPid = #pid GuPid
scoreboard players operation @e[type=marker,tag=GuNew] GuID = @s GuID
execute if entity @s[team=Blue] run tag @e[type=marker,tag=GuNew] add GuBlue
execute if entity @s[team=Red] run tag @e[type=marker,tag=GuNew] add GuRed
#仮：75tick（約60ブロック）飛行
scoreboard players set @e[type=marker,tag=GuNew] GuTimer 75
scoreboard players set @e[type=marker,tag=GuNew] GuCount 0
execute at @e[type=marker,tag=GuNew,limit=1] run summon ender_dragon ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["GuDragon","GuNewD"]}
scoreboard players operation @e[type=ender_dragon,tag=GuNewD] GuPid = #pid GuPid
tag @e[type=ender_dragon,tag=GuNewD] remove GuNewD
tag @e[type=marker,tag=GuNew] remove GuNew
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0.8
tellraw @a [{selector:"@s"},{text:"が絨毯爆撃を要請した",color:"red"}]
