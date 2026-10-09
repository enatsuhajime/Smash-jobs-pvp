#地面に刺さった矢は消す → markerが降りる。プレイヤーに当たった矢も消えるので同じ扱い
execute on vehicle if entity @s[nbt={inGround:1b}] run kill @s
execute if predicate main:gu_riding run return 0
tag @s remove GuArrowM
tag @s add GuStrike
execute store result score @s GuCount run data get storage main:guerrilla param.bombbow.count
execute store result score @s GuTimer run data get storage main:guerrilla param.bombbow.warn
