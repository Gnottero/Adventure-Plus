# Replacing the Knowledge Book with an Unlinked Teleportation Scroll and removing both the advancement and the recipe
    advancement revoke @s only gnottero:utility/scrolls/unlinked_scroll
    clear @s minecraft:knowledge_book 1
    give @p minecraft:carrot_on_a_stick{CustomModelData:128001,ctc:{id:"unlinked_teleportation_scroll",from:"gnottero:adventure_plus",traits:["item","scroll","scroll/unlinked"]},display:{Lore:['{"text":""}','{"text":"[Require 30 Levels]","color":"gray","italic":false}','{"text":"Right-Click:","color":"gray","italic":false}','{"text":"Link to current location","color":"gray","italic":false}','{"text":""}'],Name:'{"text":"Unlinked Teleportation Scroll","italic":false}'}} 1
    recipe take @s gnottero:scrolls/unlinked_scroll