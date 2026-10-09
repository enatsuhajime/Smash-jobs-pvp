advancement revoke @s only main:guerrilla/knife_hit
execute unless entity @s[tag=Guerrilla] run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"knife"}] run return 0
tag @s add GuKnifer
execute if entity @s[team=Blue] as @a[team=Red,distance=..6,nbt={HurtTime:10s},sort=nearest,limit=1] at @s run function main:pvp/guerrilla/knife/victim
execute if entity @s[team=Red] as @a[team=Blue,distance=..6,nbt={HurtTime:10s},sort=nearest,limit=1] at @s run function main:pvp/guerrilla/knife/victim
tag @s remove GuKnifer
