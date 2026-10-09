#持っている武器で移動速度を変える（実行者：ゲリラ兵）
#重さ：ライフル > ショットガン > 素手・ナイフ等（0.1） > SMG > ピストル
scoreboard players set #w GuCalc 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"ak"}] run scoreboard players set #w GuCalc 1
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"gl"}] run scoreboard players set #w GuCalc 1
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"sg"}] run scoreboard players set #w GuCalc 2
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"p90"}] run scoreboard players set #w GuCalc 3
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"tec"}] run scoreboard players set #w GuCalc 4
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"rv"}] run scoreboard players set #w GuCalc 4
execute if score #w GuCalc matches 0 if entity @s[tag=GuWt] run function main:pvp/guerrilla/body/weight_clear
execute if score #w GuCalc matches 1 unless entity @s[tag=GuW1] run function main:pvp/guerrilla/body/weight_set {t:"GuW1",v:-0.15}
execute if score #w GuCalc matches 2 unless entity @s[tag=GuW2] run function main:pvp/guerrilla/body/weight_set {t:"GuW2",v:-0.1}
execute if score #w GuCalc matches 3 unless entity @s[tag=GuW3] run function main:pvp/guerrilla/body/weight_set {t:"GuW3",v:0.1}
execute if score #w GuCalc matches 4 unless entity @s[tag=GuW4] run function main:pvp/guerrilla/body/weight_set {t:"GuW4",v:0.15}
