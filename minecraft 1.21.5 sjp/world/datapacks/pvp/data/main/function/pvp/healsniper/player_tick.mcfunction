#実行者：回復スナイパー

#入力：ニンジン付きの棒の使用1回ごとに要求（HsReq）を立てる
execute if score @s HsUse matches 1.. run tag @s add HsReq
scoreboard players set @s HsUse 0
scoreboard players remove @s[scores={HsCool=1..}] HsCool 1
scoreboard players remove @s[scores={HsDartCD=1..}] HsDartCD 1
scoreboard players remove @s[scores={HsNanoCT=1..}] HsNanoCT 1

#ズーム：スナイパーを持ってスニークしている間
execute if predicate main:is_sneaking if items entity @s weapon.mainhand *[minecraft:custom_data~{hs:"rifle"}] unless entity @s[tag=HsZoom] run function main:pvp/healsniper/rifle/zoom_on with storage main:healsniper param.rifle
execute if entity @s[tag=HsZoom] unless predicate main:is_sneaking run function main:pvp/healsniper/rifle/zoom_off
execute if entity @s[tag=HsZoom] unless items entity @s weapon.mainhand *[minecraft:custom_data~{hs:"rifle"}] run function main:pvp/healsniper/rifle/zoom_off

#リロード
execute if score @s HsReload matches 1.. run function main:pvp/healsniper/rifle/reload_tick

#使用
execute if entity @s[tag=HsReq] run function main:pvp/healsniper/use

#表示
function main:pvp/healsniper/hud
