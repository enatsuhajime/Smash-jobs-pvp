#実行者：撃たれた敵（プレイヤーまたはmob） / 位置：着弾点
scoreboard players set #hit HsCalc 1
scoreboard players set #hs HsCalc 0
summon marker ~ ~ ~ {Tags:["HsHitPt"]}
function main:pvp/healsniper/rifle/hs_check with storage main:healsniper param.common
kill @e[type=marker,tag=HsHitPt]
execute if score #hs HsCalc matches 1 run function main:pvp/healsniper/rifle/dmg_hs with storage main:healsniper param.rifle
execute unless score #hs HsCalc matches 1 run function main:pvp/healsniper/rifle/dmg with storage main:healsniper param.rifle
function main:pvp/healsniper/fx/blood with storage main:healsniper param.common
execute as @a[tag=HsShooter] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0.9
