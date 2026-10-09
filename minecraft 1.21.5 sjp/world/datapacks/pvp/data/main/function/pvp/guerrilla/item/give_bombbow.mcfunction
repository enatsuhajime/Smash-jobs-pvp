give @s minecraft:bow[custom_name={text:"爆撃弓",color:"gold",italic:false},custom_data={gu:"bombbow",gu_item:1b,gu_loot:1b},unbreakable={},enchantment_glint_override=true,lore=[{text:"支給品：頭蓋骨3個",color:"white",italic:false},{text:"▶ 爆撃の矢を引き絞って撃つ",color:"gray",italic:false},{text:"▶ 矢が落ちた地点・当たった相手の位置に、警告の後で爆撃が続けて落ちる",color:"gray",italic:false},{text:"死亡すると失う",color:"red",italic:false}]] 1
#矢の本数は config の param.bombbow.arrows
function main:pvp/guerrilla/item/give_bombarrow with storage main:guerrilla param.bombbow
