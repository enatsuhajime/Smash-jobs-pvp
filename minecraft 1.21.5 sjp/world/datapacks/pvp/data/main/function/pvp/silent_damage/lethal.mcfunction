#倒れる一撃：このtickの未反映分を捨てて、通常のダメージで確実に倒す（キルの記録・死亡メッセージ用）
scoreboard players set @s SdPend 0
tag @s remove SdPending
$damage @s 1000 $(type) by @a[tag=$(src),limit=1]
#撃った側の手ごたえ：キルの印とキル音
$execute as @a[tag=$(src),limit=1] at @s run function main:pvp/silent_damage/killmarker
