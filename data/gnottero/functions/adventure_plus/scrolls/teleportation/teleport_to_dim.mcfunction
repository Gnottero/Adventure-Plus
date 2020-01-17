# Teleporting the player to the right dimension
    teleport @p @s
    execute if score @p gn.dimension matches 1 in the_end run tp @p ~ ~ ~
    execute if score @p gn.dimension matches 0 in overworld run tp @p ~ ~ ~
    execute if score @p gn.dimension matches -1 in the_nether run tp @p ~ ~ ~

# Setting the score gn.dimension to 2
    scoreboard players reset @s gn.dimension

# Killing the executor
    kill @s