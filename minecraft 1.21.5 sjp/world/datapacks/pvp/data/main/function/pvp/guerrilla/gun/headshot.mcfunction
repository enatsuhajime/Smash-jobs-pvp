data modify storage main:guerrilla hit.amount set from storage main:guerrilla shot.hs
execute as @a[tag=GuShooter] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 0.6 1.8
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.2 6
