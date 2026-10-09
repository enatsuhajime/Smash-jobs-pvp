item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[team=Blue] run effect give @a[team=Red,gamemode=!spectator] minecraft:glowing 10 0 true
execute if entity @s[team=Red] run effect give @a[team=Blue,gamemode=!spectator] minecraft:glowing 10 0 true
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5
tellraw @a [{selector:"@s"},{text:"がUAVを起動した",color:"yellow"}]
