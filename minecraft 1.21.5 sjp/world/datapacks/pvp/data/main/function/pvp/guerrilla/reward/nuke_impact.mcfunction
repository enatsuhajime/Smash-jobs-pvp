bossbar set main:gu_nuke name {text:"大規模爆風爆弾 着弾",color:"dark_red",bold:true}
bossbar set main:gu_nuke value 0
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.5
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 0.5
effect give @a minecraft:darkness 3 0 true
