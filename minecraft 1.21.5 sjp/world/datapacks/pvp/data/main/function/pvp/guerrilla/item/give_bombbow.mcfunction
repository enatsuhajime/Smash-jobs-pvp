give @s minecraft:bow[custom_name={text:"爆撃弓",color:"gold",italic:false},custom_data={gu:"bombbow",gu_item:1b,gu_loot:1b},unbreakable={},enchantment_glint_override=true,lore=[{text:"矢の落下地点・命中した相手の位置に爆撃を行う",color:"gray",italic:false}]] 1
#矢の本数は config の param.bombbow.arrows
function main:pvp/guerrilla/item/give_bombarrow with storage main:guerrilla param.bombbow
