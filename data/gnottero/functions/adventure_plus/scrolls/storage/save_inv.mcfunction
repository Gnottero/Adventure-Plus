# Copy the storage block inventory inside the item StoredInventory array

    # Placing the shulker box
        setblock ~ 0 ~ minecraft:shulker_box[facing=up]{Items:[{Slot:0b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{StoredInventory:[],ctc:{from:"gnottero:adventure_plus",traits:["item","scroll","scroll/full"],id:"full_storage_scroll"},CustomModelData:128002,Damage:0,display:{Lore:['{"text":""}','{"text":"[Require 5 Levels]","color":"gray","italic":false}','{"text":"Shift + Right-Click","color":"gray","italic":false}','{"text":"on a storage:","color":"gray","italic":false}','{"text":"Release inventory","color":"gray","italic":false}','{"text":""}'],Name:'{"text":"Full Storage Scroll","italic":false}'}}}]}

    # Copying the Inventory of the storage block inside the StoredInventory and removing everything from the block inventory
        data modify block ~ 0 ~ Items[0].tag.StoredInventory set from block ~ ~ ~ Items
        data remove block ~ ~ ~ Items
        loot replace entity @s weapon.mainhand mine ~ 0 ~ golden_pickaxe{drop_contents:true}
        
    # Sending a Message to the player to tell him/her that the operation was successful
        xp add @s -5 levels
        tellraw @s {"text":"Inventory stored successfully","italic":false}
        scoreboard players set @s gn.store_inv 0

    # Removing the shulker box replacing it with bedrock
        setblock ~ 0 ~ bedrock