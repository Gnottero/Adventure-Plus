# Main function for the totems folder.

    #Runs the totems function basing on which one is held by the player
    execute if predicate gnottero:totems/holdwither run effect clear @s wither
    execute if predicate gnottero:totems/holdguardian run effect clear @s mining_fatigue

    #Add a UUID to the totems with an item tag called "NeedUUID"
    execute as @e[type=item,nbt={Item:{tag:{NeedUUID:1b}}}] run function gnottero:adventure_plus/totems/adduuid
    