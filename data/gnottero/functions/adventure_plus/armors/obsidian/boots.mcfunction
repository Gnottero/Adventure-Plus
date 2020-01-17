# Replacing the Knowledge Book with an Obsidian boots and removing both the advancement and the recipe
    advancement revoke @s only gnottero:utility/obsidian_armor/detect_boots
    clear @s minecraft:knowledge_book 1
    give @s minecraft:leather_boots{display:{Lore:['{"text":""}','{"text":"Full set bonus:","color":"gray","italic":false}','{"text":" - Fire Resistance","color":"gray","italic":false}'],Name:'{"text":"Obsidian Boots","italic":false}',color:3091010},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUIDLeast:639065,UUIDMost:292186,Slot:"feet"}],HideFlags:36,Unbreakable:1b,ctc:{id:"obsidian_boots",from:"gnottero:adventure_plus",traits:["item","armor","armor/obsidian_boots"]}} 1
    recipe take @s gnottero:armors/obsidian/boots