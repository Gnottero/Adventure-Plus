# If the value of the gn.throw_dagger is bigger than 0, throws a dagger
    summon minecraft:armor_stand ~ ~0.7 ~ {Small:1b,Invisible:1b,Tags:["gn.thrown_dagger","init","deal_dmg"],Pose:{Head:[90f,45f]},ArmorItems:[{},{},{},{}]}
    
    tp @e[tag=gn.thrown_dagger,tag=init,limit=1,sort=nearest] @s
    execute as @e[tag=gn.thrown_dagger,tag=init,limit=1,sort=nearest] at @s run function gnottero:adventure_plus/weapons/daggers/preparation

    replaceitem entity @s weapon.offhand air 