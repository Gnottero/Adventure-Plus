# Replacing the Knowledge Book with a pair of Leather Armored Elytra and removing both the advancement and the recipe
    advancement revoke @s only gnottero:utility/armored_elytra/detect_leather
    clear @s minecraft:knowledge_book 1
    give @s minecraft:elytra{ctc:{id:"leather_armored_elytra",from:"gnottero:adventure_plus",traits:["item","armor","armor/leather_armored_elytra"]},display:{Name:'{"text":"Leather Armored Elytra","color":"white","italic":false}'},CustomModelData:128001,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:993887,UUIDMost:438316,Slot:"chest"}]} 1
    recipe take @s gnottero:armors/elytra/leather_armored_elytra