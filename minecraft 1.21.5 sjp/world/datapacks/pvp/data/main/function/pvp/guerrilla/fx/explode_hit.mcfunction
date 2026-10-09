#一撃で倒れても頭蓋骨が正しい位置に落ちるよう、ダメージ前に記録する
scoreboard players set @s GuAssist 140
function main:pvp/guerrilla/death/store_pos
$execute if entity @a[tag=GuSrc] run damage @s $(d) main:gu_explosion by @a[tag=GuSrc,limit=1]
$execute unless entity @a[tag=GuSrc] run damage @s $(d) main:gu_explosion
