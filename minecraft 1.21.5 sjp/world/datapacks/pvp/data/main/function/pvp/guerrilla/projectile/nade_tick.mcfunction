#雪玉が消えた（着弾した）らその場で爆発
execute if predicate main:gu_riding run return 0
#仮：半径4・12ダメージ
function main:pvp/guerrilla/fx/explode {r:4,d:12}
kill @s
