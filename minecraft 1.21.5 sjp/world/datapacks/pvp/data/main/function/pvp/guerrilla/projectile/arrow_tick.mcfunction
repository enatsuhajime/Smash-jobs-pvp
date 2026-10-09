#地面に刺さった矢は消す → markerが降りる。プレイヤーに当たった矢も消えるので同じ扱い
execute on vehicle if entity @s[nbt={inGround:1b}] run kill @s
execute if predicate main:gu_riding run return 0
tag @s remove GuArrowM
tag @s add GuStrike
scoreboard players set @s GuCount 3
scoreboard players set @s GuTimer 20
