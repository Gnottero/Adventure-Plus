# If the player is holding a scroll in the offhand and his gn.used_empty is greater than 0, save his coordinates into the scroll

    # Saving executor's coordinates in the right scoreboards
        execute store result score #gn.pos gn.g_x run data get entity @s Pos[0]
        execute store result score #gn.pos gn.g_y run data get entity @s Pos[1]
        execute store result score #gn.pos gn.g_z run data get entity @s Pos[2]
        execute store result score @s gn.dimension run data get entity @s Dimension

    # Setblocking a shulker box (item data manipulation) and a spruce sign (converting scoreboards value into strings)
        setblock ~ 0 ~ shulker_box
        setblock ~ 0 ~1 minecraft:spruce_sign{Text1:'[{"score":{"name":"#gn.pos","objective":"gn.g_x"},"color":"gray","italic":false}," ",{"score":{"name":"#gn.pos","objective":"gn.g_y"}}," ",{"score":{"name":"#gn.pos","objective":"gn.g_z"}}]'} replace

    # Putting the scroll into the shulker box and adding some data to it
        data modify block ~ 0 ~ Items append from entity @s SelectedItem
        data remove block ~ 0 ~ Items[0].tag.display.Lore
        data modify block ~ 0 ~ Items[0].tag.ctc.traits[2] set value "scroll/linked"
        data modify block ~ 0 ~ Items[0].tag.ctc.id set value "linked_teleportation_scroll"
        data modify block ~ 0 ~ Items[0].tag.display.Name set value '{"text":"Linked Teleportation Scroll","italic":false}'
        data modify block ~ 0 ~ Items[0].tag.gn_scroll_pos set from entity @s Pos
        data modify block ~ 0 ~ Items[0].tag.gn_scroll_dim set from entity @s Dimension
        data modify block ~ 0 ~ Items[0].tag.display.Lore insert 0 value '{"text":""}'
        data modify block ~ 0 ~ Items[0].tag.display.Lore insert -1 value '{"text":"[Require 5 Levels]","italic":false,"color":"gray"}'
        data modify block ~ 0 ~ Items[0].tag.display.Lore insert -1 value '{"text":"Right-Click:","italic":false,"color":"gray"}'
        data modify block ~ 0 ~ Items[0].tag.display.Lore insert -1 value '{"text":"Teleport to:","italic":false,"color":"gray"}'
        data modify block ~ 0 ~ Items[0].tag.display.Lore insert -1 from block ~ 0 ~1 Text1
        data modify block ~ 0 ~ Items[0].tag.display.Lore insert -1 value '{"text":"Dimension:","italic":false,"color":"gray"}'
        execute if score @s gn.dimension matches 0 run data modify block ~ 0 ~ Items[0].tag.display.Lore insert -1 value '{"text":"Overworld","color":"gray","italic":false}'
        execute if score @s gn.dimension matches 1 run data modify block ~ 0 ~ Items[0].tag.display.Lore insert -1 value '{"text":"The End","color":"gray","italic":false}'
        execute if score @s gn.dimension matches -1 run data modify block ~ 0 ~ Items[0].tag.display.Lore insert -1 value '{"text":"The Nether","color":"gray","italic":false}'
        data modify block ~ 0 ~ Items[0].tag.display.Lore insert -1 value '{"text":""}'

    # Setting the executor's score to 0
        scoreboard players set @s gn.link_scroll 0
        scoreboard players set @a gn.used_linked 0
        scoreboard players reset @s gn.g_x
        scoreboard players reset @s gn.g_y
        scoreboard players reset @s gn.g_z
        scoreboard players reset @s gn.dimension

    # Replacing the unlinked map with the linked one
        loot replace entity @s weapon.mainhand 1 mine ~ 0 ~ golden_pickaxe{drop_contents:true}

    # Replacing the shulker box and the sign with bedrock
        setblock ~ 0 ~ bedrock
        setblock ~ 0 ~1 bedrock

    # Removing 30 levels from the executor
        xp add @s -30 levels