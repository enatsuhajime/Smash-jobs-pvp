scoreboard players set #slow GuCalc 0
execute as @a[tag=Guerrilla] run function main:pvp/guerrilla/item/ensure
#プレイヤーが捨てたゲリラ兵の装備（ドロップ品以外）は消す
execute as @e[type=item,tag=!GuDrop] if items entity @s contents *[minecraft:custom_data~{gu_item:1b}] run kill @s
