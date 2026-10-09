#すでに持っている場合は予備マガジン+1
execute if score @s GuHasTec matches 1 run return run function main:pvp/guerrilla/drop/mag_tec
scoreboard players set @s GuHasTec 1
scoreboard players set @s GuAmmoTec 20
scoreboard players set @s GuMagTec 0
function main:pvp/guerrilla/item/give_tec
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1.2
tellraw @s {text:"オートピストル（Tec9）を手に入れた",color:"gold"}
