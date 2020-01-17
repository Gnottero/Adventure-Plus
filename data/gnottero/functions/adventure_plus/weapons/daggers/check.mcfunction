# Checks if the armor stand is on the ground and if so deals damage to the entities around it and kills the armor stand
    tag @e[sort=nearest,distance=..2,type=!player,type=!item,tag=!gn.thrown_dagger] add gn.target

    execute store result score @e[tag=gn.target] gn.target_hp run data get entity @e[tag=gn.target,limit=1] Health
    execute if score @e[tag=gn.target,limit=1] gn.target_hp <= @s gn.dagger_dmg run kill @e[tag=gn.target]
    execute unless score @e[tag=gn.target,limit=1] gn.target_hp <= @s gn.dagger_dmg store result entity @e[tag=gn.target,limit=1] Health float 1 run scoreboard players operation @e[tag=gn.target] gn.target_hp -= @s gn.dagger_dmg

    tag @e[tag=gn.target] remove gn.target
    tag @s remove deal_dmg
    scoreboard players set @s gn.dagger_dmg 0