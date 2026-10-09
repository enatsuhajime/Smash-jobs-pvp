#ヘッドショット：毒に加えて鈍足
$effect give @s minecraft:poison $(poison_sec) $(poison_lv)
$effect give @s minecraft:slowness $(hs_slow_sec) $(hs_slow_lv)
$damage @s $(hs_dmg) main:hs_bullet by @a[tag=HsShooter,limit=1]
execute as @a[tag=HsShooter] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 0.6 1.5
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.2 6 force @a
