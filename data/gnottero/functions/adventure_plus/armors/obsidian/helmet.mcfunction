# Replacing the Knowledge Book with an Obsidian helmet and removing both the advancement and the recipe
    advancement revoke @s only gnottero:utility/obsidian_armor/detect_helmet
    clear @s minecraft:knowledge_book 1
    give @s minecraft:leather_helmet{display:{Lore:['{"text":""}','{"text":"Full set bonus:","color":"gray","italic":false}','{"text":" - Fire Resistance","color":"gray","italic":false}'],Name:'{"text":"Obsidian Helmet","italic":false}',color:3091010},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUIDLeast:834026,UUIDMost:420449,Slot:"head"}],HideFlags:36,Unbreakable:1b,ctc:{id:"obsidian_helmet",from:"gnottero:adventure_plus",traits:["item","armor","armor/obsidian_helmet"]}} 1
    recipe take @s gnottero:armors/obsidian/helmet