# Main function for the scroll folder.

    # Calling Teleportation Scroll functions
        execute if entity @s[scores={gn.link_scroll=1..},predicate=gnottero:scrolls/hold_unlinked_scroll] run function gnottero:adventure_plus/scrolls/teleportation/save_pos
        execute if entity @s[scores={gn.used_linked=1..},predicate=gnottero:scrolls/used_linked_scroll] run function gnottero:adventure_plus/scrolls/teleportation/teleport_to_aec

    # Calling Storage Scroll functions
        execute if entity @s[scores={gn.store_inv=1..},predicate=gnottero:scrolls/hold_empty_scroll] anchored eyes positioned ^ ^ ^0.1 anchored feet run function gnottero:adventure_plus/scrolls/storage/raycasting/rc_storage
        execute if entity @s[scores={gn.release_inv=1..},predicate=gnottero:scrolls/used_storage_scroll] anchored eyes positioned ^ ^ ^0.1 anchored feet run function gnottero:adventure_plus/scrolls/storage/raycasting/rc_storage_put

    