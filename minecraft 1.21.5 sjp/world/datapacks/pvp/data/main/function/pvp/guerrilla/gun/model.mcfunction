#リロード中・コッキング中は、持っている銃の見た目を切り替える（実行者：ゲリラ兵）
scoreboard players set #alt GuCalc 0
#リロード中（リロードしている銃を持っているとき）
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 1 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"sg"}] run scoreboard players set #alt GuCalc 1
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 2 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"ak"}] run scoreboard players set #alt GuCalc 1
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 3 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"gl"}] run scoreboard players set #alt GuCalc 1
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 4 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"p90"}] run scoreboard players set #alt GuCalc 1
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 5 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"tec"}] run scoreboard players set #alt GuCalc 1
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 6 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"rv"}] run scoreboard players set #alt GuCalc 1
#コッキング中（単発銃の次弾までの間：ショットガンのポンプ、リボルバーの撃鉄）
execute if score @s GuCool matches 1.. if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"sg"}] run scoreboard players set #alt GuCalc 1
execute if score @s GuCool matches 1.. if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"rv"}] run scoreboard players set #alt GuCalc 1
execute if score #alt GuCalc matches 1 unless items entity @s weapon.mainhand *[minecraft:custom_data~{gu_alt:1b}] run function main:pvp/guerrilla/gun/model_alt
execute if score #alt GuCalc matches 0 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu_alt:1b}] run function main:pvp/guerrilla/gun/model_normal
