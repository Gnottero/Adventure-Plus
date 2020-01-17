# Replacing the Knowledge Book with a Golden Dagger and removing both the advancement and the recipe
    advancement revoke @s only gnottero:utility/daggers/detect_golden
    clear @s minecraft:knowledge_book 1
    give @p minecraft:iron_sword{ctc:{id:"golden_dagger",from:"gnottero:adventure_plus",traits:["item","weapon","weapon/dagger"]},display:{Name:'{"text":"Golden Dagger","italic":false}'},CustomModelData:128004,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:0.5,Operation:0,UUIDLeast:926486,UUIDMost:630445,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2,Operation:0,UUIDLeast:831621,UUIDMost:374530,Slot:"mainhand"}]} 1
    recipe take @s gnottero:weapons/daggers/golden_dagger