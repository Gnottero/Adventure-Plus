# Replacing the Knowledge Book with a pair of Leather Armored Elytra and removing both the advancement and the recipe
    advancement revoke @s only gnottero:utility/armored_elytra/detect_diamond
    clear @s minecraft:knowledge_book 1
    give @s minecraft:elytra{ctc:{id:"diamond_armored_elytra",from:"gnottero:adventure_plus",traits:["item","armor","armor/diamond_armored_elytra"]},display:{Name:'{"text":"Diamond Armored Elytra","color":"white","italic":false}'},CustomModelData:128005,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUIDLeast:993887,UUIDMost:438316,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:2,Operation:0,UUIDLeast:772849,UUIDMost:917686,Slot:"chest"}]} 1
    recipe take @s gnottero:armors/elytra/diamond_armored_elytra