# Set the looking direction of the armor stand and runs the function launch, that launches the dagger
    data modify entity @s ArmorItems[3] set from entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_sword",Count:1b,tag:{ctc:{from:"gnottero:adventure_plus",traits:["item","weapon/dagger"]}}}]},limit=1,sort=nearest] Inventory[{Slot:-106b}]
    execute store result score @s gn.durability run data get entity @s ArmorItems[3].tag.Damage
    execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players add @s gn.durability 1
    tag @s remove init
    function gnottero:adventure_plus/weapons/daggers/launch
