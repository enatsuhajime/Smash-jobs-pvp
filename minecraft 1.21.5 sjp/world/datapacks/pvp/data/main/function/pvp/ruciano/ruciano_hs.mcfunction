#縫世

#画面表示
execute if entity @a[tag=Ruciano] as @a[tag=Ruciano] run title @s actionbar [{"text":"束の間の幻影 ct:1000 ","color":"dark_gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]


#時計配布
execute as @a[tag=Ruciano,scores={sneak=1000..}] run give @s minecraft:clock[custom_name="ストップウォッチ",enchantment_glint_override=true,lore=["時よ。止まれ。"]]

#タグ付け
execute as @a[tag=Ruciano,scores={sneak=1000..}] run tag @s add RucianoHs

execute as @a[tag=Ruciano,scores={sneak=1000..}] run scoreboard players set @a[tag=Ruciano,scores={sneak=1000..}] sneak 0