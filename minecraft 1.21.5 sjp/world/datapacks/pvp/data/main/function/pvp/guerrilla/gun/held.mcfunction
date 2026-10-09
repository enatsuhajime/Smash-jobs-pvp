#実行者：右クリック中のゲリラ兵。手に持っている物で振り分ける
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"sg"}] run return run function main:pvp/guerrilla/gun/w/sg
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"ak"}] run return run function main:pvp/guerrilla/gun/w/ak
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"gl"}] run return run function main:pvp/guerrilla/gun/w/gl
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"p90"}] run return run function main:pvp/guerrilla/gun/w/p90
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"tec"}] run return run function main:pvp/guerrilla/gun/w/tec
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"rv"}] run return run function main:pvp/guerrilla/gun/w/rv
execute if score @s GuPress matches 1 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"uav"}] run return run function main:pvp/guerrilla/reward/uav_use
execute if score @s GuPress matches 1 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"carpet"}] run return run function main:pvp/guerrilla/reward/carpet_use
execute if score @s GuPress matches 1 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"nuke"}] run return run function main:pvp/guerrilla/reward/nuke_use
