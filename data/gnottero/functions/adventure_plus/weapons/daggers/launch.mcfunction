# Creating all the required scoreboards and performing all the calculations behind the throwing mechanic

    scoreboard objectives add gn.g_x dummy
    scoreboard objectives add gn.g_y dummy
    scoreboard objectives add gn.g_z dummy
    scoreboard objectives add gn.g_dx dummy
    scoreboard objectives add gn.g_dy dummy
    scoreboard objectives add gn.g_dz dummy

    execute store result score @s gn.g_x run data get entity @s Pos[0] 1000
    execute store result score @s gn.g_y run data get entity @s Pos[1] 1000
    execute store result score @s gn.g_z run data get entity @s Pos[2] 1000

    tp @s ^ ^ ^1

    execute store result score @s gn.g_dx run data get entity @s Pos[0] 1000
    execute store result score @s gn.g_dy run data get entity @s Pos[1] 1000
    execute store result score @s gn.g_dz run data get entity @s Pos[2] 1000

    scoreboard players operation @s gn.g_dx -= @s gn.g_x
    scoreboard players operation @s gn.g_dy -= @s gn.g_y
    scoreboard players operation @s gn.g_dz -= @s gn.g_z

    tp @s ^ ^ ^-1

    execute store result entity @s Motion[0] double 0.004 run scoreboard players get @s gn.g_dx
    execute store result entity @s Motion[1] double 0.007 run scoreboard players get @s gn.g_dy
    execute store result entity @s Motion[2] double 0.004 run scoreboard players get @s gn.g_dz

    execute store result score @s gn.dagger_dmg run data get entity @s ArmorItems[3].tag.AttributeModifiers[1].Amount

    scoreboard objectives remove gn.g_x
    scoreboard objectives remove gn.g_y
    scoreboard objectives remove gn.g_z
    scoreboard objectives remove gn.g_dx
    scoreboard objectives remove gn.g_dy
    scoreboard objectives remove gn.g_dz