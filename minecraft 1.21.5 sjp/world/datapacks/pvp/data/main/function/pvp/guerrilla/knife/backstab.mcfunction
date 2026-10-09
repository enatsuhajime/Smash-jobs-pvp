#追加ダメージは config の param.knife.backstab
$damage @s $(backstab) main:gu_backstab by @a[tag=GuKnifer,limit=1]
particle minecraft:crit ~ ~1 ~ 0.2 0.3 0.2 0.3 15
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.7
