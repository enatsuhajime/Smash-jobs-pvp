tag @s add GuSeen
execute unless data entity @s item.components."minecraft:custom_data"{gu:"bombarrow"} run return 0
summon marker ~ ~ ~ {Tags:["GuArrowM","GuNew"]}
function main:pvp/guerrilla/projectile/attach
