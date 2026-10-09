##sc/#ss/#mm から拡散角を決めて shot.n に入れる（実行者：射手）
scoreboard players operation #n GuCalc = #ss GuCalc
execute if predicate main:is_sneaking run scoreboard players operation #n GuCalc = #sc GuCalc
execute if score @s GuMove matches 1.. run scoreboard players operation #n GuCalc *= #mm GuCalc
execute if score @s GuMove matches 1.. run scoreboard players operation #n GuCalc /= #10 GuCalc
execute if score #n GuCalc matches ..0 run scoreboard players set #n GuCalc 1
execute store result storage main:guerrilla shot.n int 1 run scoreboard players get #n GuCalc
