# Setting up all the scoreboards needed by the datapack
    scoreboard objectives add gn.g_x dummy
    scoreboard objectives add gn.g_y dummy
    scoreboard objectives add gn.g_z dummy
    scoreboard objectives add gn.g_dx dummy
    scoreboard objectives add gn.g_dy dummy
    scoreboard objectives add gn.g_dz dummy
    scoreboard objectives add gn.dagger_dmg dummy
    scoreboard objectives add gn.target_hp dummy
    scoreboard objectives add gn.durability dummy
    scoreboard objectives add gn.dimension dummy
    scoreboard objectives add gn.link_scroll minecraft.used:minecraft.carrot_on_a_stick
    scoreboard objectives add gn.id dummy
    scoreboard objectives add gn.used_linked minecraft.used:minecraft.carrot_on_a_stick
    scoreboard objectives add gn.store_inv minecraft.used:minecraft.carrot_on_a_stick
    scoreboard objectives add gn.release_inv minecraft.used:minecraft.carrot_on_a_stick

# Setting scoreboard values to fake players
    scoreboard players set @a gn.dimension 2
    execute if score #next gn.id matches 0 run scoreboard players set #next gn.id 0