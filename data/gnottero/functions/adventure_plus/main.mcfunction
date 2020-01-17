# Running all the main functions
    execute as @a[predicate=gnottero:holdtotem] run function gnottero:adventure_plus/totems/main
    execute as @a[predicate=gnottero:wearinganarmor] run function gnottero:adventure_plus/armors/main
    function gnottero:adventure_plus/weapons/main
    execute as @a[predicate=gnottero:hold_scroll] at @s run function gnottero:adventure_plus/scrolls/main
    
    execute as @a unless score @s gn.id matches -2147483648.. run function gnottero:adventure_plus/assign_id
    
# Setting important scores to 0
    execute as @a[scores={gn.link_scroll=1..}] run scoreboard players set @s gn.link_scroll 0
    execute as @a[scores={gn.used_linked=1..}] run scoreboard players set @s gn.used_linked 0

    execute as @a[scores={gn.store_inv=1..}] run scoreboard players set @s gn.store_inv 0
    execute as @a[scores={gn.release_inv=1..}] run scoreboard players set @s gn.release_inv 0