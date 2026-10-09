#1回分の射撃（実行者：射手。storage main:guerrilla param.<銃> を引数に呼ぶ）
$scoreboard players set #sc GuCalc $(spread_c)
$scoreboard players set #ss GuCalc $(spread_s)
$scoreboard players set #mm GuCalc $(move)
function main:pvp/guerrilla/gun/spread
#射程（ブロック）→ 0.25ブロック刻みの歩数
$scoreboard players set #st GuCalc $(range)
scoreboard players operation #st GuCalc *= #4 GuCalc
execute store result storage main:guerrilla shot.steps int 1 run scoreboard players get #st GuCalc
$data modify storage main:guerrilla shot merge value {dmg:$(dmg),hs:$(hs),pellets:$(pellets),far_dmg:$(far_dmg)}
#距離減衰の開始距離（ブロック → 0.25ブロック刻みの歩数。0 なら減衰なし）
$scoreboard players set #far GuCalc $(far)
scoreboard players operation #far GuCalc *= #4 GuCalc
function main:pvp/guerrilla/gun/fire
