#頭蓋骨の所持数で支給（消費しない。1ライフにつき各1回）
execute if score @s GuSkull matches 1.. unless score @s GuRw1 matches 1 run function main:pvp/guerrilla/reward/grant_1
execute if score @s GuSkull matches 3.. unless score @s GuRw3 matches 1 run function main:pvp/guerrilla/reward/grant_3
execute if score @s GuSkull matches 5.. unless score @s GuRw5 matches 1 run function main:pvp/guerrilla/reward/grant_5
execute if score @s GuSkull matches 10.. unless score @s GuRw10 matches 1 run function main:pvp/guerrilla/reward/grant_10
