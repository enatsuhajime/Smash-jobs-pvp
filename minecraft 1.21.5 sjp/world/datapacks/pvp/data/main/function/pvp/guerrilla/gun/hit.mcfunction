#実行者：被弾した敵 / 位置：着弾点
scoreboard players set #hit GuCalc 1
#一撃で倒れても頭蓋骨が正しい位置に落ちるよう、ダメージ前に記録する
function main:pvp/guerrilla/death/mark with storage main:guerrilla param.common
data modify storage main:guerrilla hit.amount set from storage main:guerrilla shot.dmg
summon marker ~ ~ ~ {Tags:["GuHitPt"]}
function main:pvp/guerrilla/gun/hs_check with storage main:guerrilla param.common
kill @e[type=marker,tag=GuHitPt]
function main:pvp/guerrilla/gun/damage with storage main:guerrilla hit
playsound minecraft:block.note_block.hat player @a[tag=GuShooter] ~ ~ ~ 0.6 1.6
