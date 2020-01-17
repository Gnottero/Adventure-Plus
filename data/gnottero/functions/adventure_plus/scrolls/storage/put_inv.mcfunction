# Copy the item StoredInventory array inside the storage block inventory  

    # Putting the items inside the block inventory and removing the scroll
        data modify block ~ ~ ~ Items set from entity @s SelectedItem.tag.StoredInventory

    # Removing the scroll from the player inventory and summoning a new scroll on top of the storage block        
        replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Lore:['{"text":""}','{"text":"[Require 5 Levels]","color":"gray","italic":false}','{"text":"Shift + Right-Click","color":"gray","italic":false}','{"text":"on a storage:","color":"gray","italic":false}','{"text":"Store inventory","color":"gray","italic":false}','{"text":""}'],Name:'{"text":"Empty Storage Scroll","italic":false}'},CustomModelData:128002,StoredInventory:[],ctc:{id:"empty_storage_scroll",from:"gnottero:adventure_plus",traits:["item","scroll","scroll/empty"]}}

    # Sending a Message to the player to tell him/her that the operation was successful
        xp add @s -5 levels
        tellraw @s {"text":"Inventory released successfully","italic":false}
        scoreboard players set @s gn.release_inv 0
