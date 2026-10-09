#実行者：被弾した敵（プレイヤーまたはmob） / 位置：着弾点
scoreboard players set #hit GuCalc 1
#一撃で倒れても頭蓋骨が正しい位置に落ちるよう、ダメージ前に記録する（プレイヤーのみ）
execute if entity @s[type=player] run function main:pvp/guerrilla/death/mark with storage main:guerrilla param.common
data modify storage main:guerrilla hit.amount set from storage main:guerrilla shot.dmg
summon marker ~ ~ ~ {Tags:["GuHitPt"]}
function main:pvp/guerrilla/gun/hs_check with storage main:guerrilla param.common
kill @e[type=marker,tag=GuHitPt]
#距離による減衰：far ブロックを超えたら far_dmg（ヘッドショットも同じ）
execute if score #far GuCalc matches 1.. if score #d GuCalc > #far GuCalc run data modify storage main:guerrilla hit.amount set from storage main:guerrilla shot.far_dmg
function main:pvp/guerrilla/gun/damage with storage main:guerrilla hit
#命中音（撃った本人の位置で鳴らすので、遠くでも聞こえる）
execute as @a[tag=GuShooter] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.45 1.3
