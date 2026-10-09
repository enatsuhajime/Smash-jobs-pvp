#実行者：ゲリラ兵

#入力：ニンジン付きの棒の使用回数。右クリック長押し中は約4tickごとに増えるため、5tick以内の再入力を「押し続け」とみなす
scoreboard players set @s GuPress 0
execute if score @s GuUse matches 1.. unless score @s GuHoldT matches 1.. run scoreboard players set @s GuPress 1
execute if score @s GuUse matches 1.. run scoreboard players set @s GuHoldT 5
execute unless score @s GuUse matches 1.. if score @s GuHoldT matches 1.. run scoreboard players remove @s GuHoldT 1
scoreboard players set @s GuUse 0
scoreboard players remove @s[scores={GuCool=1..}] GuCool 1

#移動判定（歩き・ダッシュ・しゃがみ歩きの距離）
scoreboard players operation @s GuMove = @s GuWalk
scoreboard players operation @s GuMove += @s GuSprint
scoreboard players operation @s GuMove += @s GuCrouchM
scoreboard players set @s GuWalk 0
scoreboard players set @s GuSprint 0
scoreboard players set @s GuCrouchM 0


#P90を持っている間はしゃがみ中も速い
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"p90"}] unless entity @s[tag=GuP90] run function main:pvp/guerrilla/body/p90_on
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"p90"}] if entity @s[tag=GuP90] run function main:pvp/guerrilla/body/p90_off

#リロード
execute if score @s GuReload matches 1.. run function main:pvp/guerrilla/gun/reload_tick

#射撃・支給品の使用
execute if score @s GuHoldT matches 1.. run function main:pvp/guerrilla/gun/held

#表示
function main:pvp/guerrilla/hud
