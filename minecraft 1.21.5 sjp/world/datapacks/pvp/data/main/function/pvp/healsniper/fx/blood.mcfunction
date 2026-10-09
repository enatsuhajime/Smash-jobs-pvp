#命中時の血（量は config の param.common.blood。0 なら出さない）
$scoreboard players set #b HsCalc $(blood)
execute if score #b HsCalc matches ..0 run return 0
$particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.12 0.15 0.12 0 $(blood) force @a
$particle minecraft:dust{color:[0.55,0.0,0.0],scale:0.9} ~ ~ ~ 0.1 0.12 0.1 0 $(blood) force @a
