#死神

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:17,pool:"ruciano",job_name:"死神",job_function:"ruciano",sign_x:-19,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-19 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2


#タグ消し
function main:job_selection/tag_reset2



#タグ付け
tag @p add Ruciano

#持ち物
clear @p
give @p minecraft:bow[custom_name="光",enchantments={"power":3,"infinity":1},lore=["家族への別れは済ませたか？"],unbreakable={}]
give @p minecraft:arrow 1
give @p minecraft:leather_chestplate[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="紫黒",dyed_color=14037730,enchantment_glint_override=true,lore=["結末はもう知っている"],unbreakable={}]
give @p minecraft:leather_leggings[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="紫黒",dyed_color=0,enchantment_glint_override=true,lore=["だがまだ終わりじゃない"],unbreakable={}]
item replace entity @p armor.chest from entity @p container.2
item replace entity @p armor.legs from entity @p container.3
clear @p minecraft:leather_chestplate 1
clear @p minecraft:leather_leggings 1
give @p minecraft:bread 64

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：死神"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 30
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:movement_speed base set 0.08
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:scale base set 0.9

#選択制限

execute at @e[tag=jobsentakuKun] run data merge block ~-19 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
