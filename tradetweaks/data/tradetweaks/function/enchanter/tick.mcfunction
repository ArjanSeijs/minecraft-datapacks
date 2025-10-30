execute as @e[tag=tradetweaks.enchanter, tag=!tradetweaks.level0] at @s \
    unless predicate tradetweaks:job/is_jobless \
    run function tradetweaks:enchanter/trades/level0

execute as @e[tag=tradetweaks.enchanter, tag=tradetweaks.level0] at @s \
    if predicate tradetweaks:job/is_jobless \
    run function tradetweaks:enchanter/trades/jobless

execute as @e[tag=tradetweaks.enchanter] at @s \
    if predicate tradetweaks:job/is_jobless \
    run tag @s remove tradetweaks.enchanter

execute as @e[type=villager, tag=!tradetweaks.enchanter] at @s \
    unless predicate tradetweaks:job/is_custom \
    if predicate tradetweaks:job/new \
    if function tradetweaks:enchanter/is_enchanter \
    run tag @s add tradetweaks.enchanter

execute as @e[tag=tradetweaks.display.enchanter] at @s \
    unless block ~ ~ ~ minecraft:barrel \
    run function tradetweaks:lib/kill

execute as @e[tag=tradetweaks.enchanter] at @s \
    run function tradetweaks:enchanter/set_trades