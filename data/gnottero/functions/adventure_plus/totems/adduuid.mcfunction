# Store the current gametick in the tags of the item, and use this value as UUID

    execute store result entity @s Item.tag.UUID int 1 run time query gametime
    data remove entity @s Item.tag.NeedUUID