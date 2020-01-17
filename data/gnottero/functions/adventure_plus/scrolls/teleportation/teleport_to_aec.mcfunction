# Setting up everything to teleport the player
   # Summoning the aec with tag of gn.destination
      summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"block air",NoGravity:1b,Radius:0.5f,Duration:1,Tags:["gn.destination"]}
      execute store result score @s gn.dimension run data get entity @s SelectedItem.tag.gn_scroll_dim

   # Teleportin the player to the right coordinates
      data modify entity @e[type=area_effect_cloud,tag=gn.destination,limit=1,sort=nearest] Pos set from entity @s SelectedItem.tag.gn_scroll_pos
      scoreboard players operation @e[type=area_effect_cloud,tag=gn.destination,limit=1,sort=nearest] gn.id = @s gn.id

      execute as @e[type=area_effect_cloud,tag=gn.destination] if score @s gn.id = @p gn.id at @s run function gnottero:adventure_plus/scrolls/teleportation/teleport_to_dim

   # Setting the executor's gn.used_link score to 0 and resetting the gn.dimension score
      scoreboard players set @s gn.used_linked 0

   # Removing 5 levels from the executor
      xp add @s -5 levels