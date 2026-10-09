#敵チームだけに効く爆発（実行者：GuID とチームtag を持つentity）
tag @a remove GuSrc
scoreboard players operation #id GuCalc = @s GuID
execute as @a[tag=Guerrilla] if score @s GuID = #id GuCalc run tag @s add GuSrc
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 4 0.8
$execute if entity @s[tag=GuBlue] as @e[type=player,team=Red,gamemode=!spectator,distance=..$(r)] run function main:pvp/guerrilla/fx/explode_hit {d:$(d)}
$execute if entity @s[tag=GuRed] as @e[type=player,team=Blue,gamemode=!spectator,distance=..$(r)] run function main:pvp/guerrilla/fx/explode_hit {d:$(d)}
tag @a remove GuSrc
