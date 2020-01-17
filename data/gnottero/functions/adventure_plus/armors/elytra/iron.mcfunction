# Replacing the Knowledge Book with a pair of Leather Armored Elytra and removing both the advancement and the recipe
    advancement revoke @s only gnottero:utility/armored_elytra/detect_iron
    clear @s minecraft:knowledge_book 1
    give @s minecraft:elytra{ctc:{id:"iron_armored_elytra",from:"gnottero:adventure_plus",traits:["item","armor","armor/iron_armored_elytra"]},display:{Name:'{"text":"Iron Armored Elytra","color":"white","italic":false}'},CustomModelData:128003,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUIDLeast:993887,UUIDMost:438316,Slot:"chest"}]} 1
    recipe take @s gnottero:armors/elytra/iron_armored_elytra