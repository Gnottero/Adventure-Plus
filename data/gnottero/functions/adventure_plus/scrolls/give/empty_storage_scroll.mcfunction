# Replacing the Knowledge Book with an Unlinked Teleportation Scroll and removing both the advancement and the recipe
    advancement revoke @s only gnottero:utility/scrolls/empty_storage_scroll
    clear @s minecraft:knowledge_book 1
    give @p minecraft:carrot_on_a_stick{display:{Lore:['{"text":""}','{"text":"[Require 5 Levels]","color":"gray","italic":false}','{"text":"Shift + Right-Click","color":"gray","italic":false}','{"text":"on a storage:","color":"gray","italic":false}','{"text":"Store inventory","color":"gray","italic":false}','{"text":""}'],Name:'{"text":"Empty Storage Scroll","italic":false}'},CustomModelData:128002,StoredInventory:[],ctc:{id:"empty_storage_scroll",from:"gnottero:adventure_plus",traits:["item","scroll","scroll/empty"]}} 1
    recipe take @s gnottero:scrolls/empty_storage_scroll