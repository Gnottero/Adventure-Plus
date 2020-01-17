# Replacing the Knowledge Book with a Diamond Dagger and removing both the advancement and the recipe
    advancement revoke @s only gnottero:utility/daggers/detect_diamond
    clear @s minecraft:knowledge_book 1
    give @p minecraft:iron_sword{ctc:{id:"diamond_dagger",from:"gnottero:adventure_plus",traits:["item","weapon","weapon/dagger"]},display:{Name:'{"text":"Diamond Dagger","italic":false}'},CustomModelData:128005,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:0.5,Operation:0,UUIDLeast:926486,UUIDMost:630445,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:831621,UUIDMost:374530,Slot:"mainhand"}]} 1
    recipe take @s gnottero:weapons/daggers/diamond_dagger