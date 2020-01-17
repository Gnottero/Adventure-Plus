#Giving back the dagger and killing the armor stand
    execute unless score @s gn.durability matches 251 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",Count:1b,tag:{Placeholder:1b}}}
    execute unless score @s gn.durability matches 251 run data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword",Count:1b,tag:{Placeholder:1b}}},limit=1] Item set from entity @s ArmorItems[3]
    kill @s