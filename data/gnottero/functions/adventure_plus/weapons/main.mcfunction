# Main function for the weapons folder.

    # If a player has a value equal or greater than one in the gn.throw score, runs the throwing function and throws the dagger
        execute as @e[tag=gn.thrown_dagger,tag=deal_dmg] at @s if entity @e[sort=nearest,distance=..2,type=!player,type=!item,tag=!gn.thrown_dagger] run function gnottero:adventure_plus/weapons/daggers/check
        execute as @e[tag=gn.thrown_dagger,nbt={OnGround:1b}] at @s run function gnottero:adventure_plus/weapons/daggers/kill
        execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_sword",Count:1b,tag:{ctc:{from:"gnottero:adventure_plus",traits:["item","weapon/dagger"]}}}]}] at @s run function gnottero:adventure_plus/weapons/daggers/throw