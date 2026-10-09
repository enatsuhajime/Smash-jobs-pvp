#カメラの揺れ・赤いフラッシュ・被弾音を出さずにダメージを与える（実行者：撃たれた相手）
#引数：amount ダメージ / type 倒す一撃に使うダメージタイプ / src 撃った人のtag
#  銃は防具を貫通する（防具による軽減なし。ダメージタイプも #minecraft:bypasses_armor）
#  プレイヤー：最大体力を一瞬下げて体力を切り詰める（tick で反映・翌tickに戻す）
#  mob、または倒れる一撃：通常のダメージ（キルの記録・死亡メッセージのため）
#撃った側の手ごたえ：ヒットマーカー（撃った本人にだけ表示）
$execute as @a[tag=$(src),limit=1] at @s run function main:pvp/silent_damage/hitmarker
$execute unless entity @s[type=player] run return run damage @s $(amount) $(type) by @a[tag=$(src),limit=1]

#前のtickに下げた最大体力がまだ戻っていなければ先に戻す（このtickの計算を正しくするため）
execute store result score #now SdCalc run time query gametime
execute if entity @s[tag=SdCut] unless score @s SdCutT = #now SdCalc run function main:pvp/silent_damage/restore

$data modify storage main:silent_damage tmp.amount set value $(amount)
execute store result score #d SdCalc run data get storage main:silent_damage tmp.amount 100

#このtickで既に受けた分と合わせて、体力が1未満になるなら通常のダメージで倒す
execute store result score #h SdCalc run data get entity @s Health 100
scoreboard players operation #h SdCalc -= @s SdPend
scoreboard players operation #h SdCalc -= #d SdCalc
$execute if score #h SdCalc matches ..99 run return run function main:pvp/silent_damage/lethal {type:"$(type)",src:"$(src)"}

#そうでなければ、このtickの合計に足す（反映は silent_damage/tick）
scoreboard players operation @s SdPend += #d SdCalc
tag @s add SdPending
