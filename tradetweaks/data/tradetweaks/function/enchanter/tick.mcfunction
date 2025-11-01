# Trades
execute as @e[tag=tradetweaks.enchanter, tag=!tradetweaks.level1] at @s \
    unless predicate tradetweaks:job/is_jobless \
    run function tradetweaks:enchanter/trades/level1

execute as @e[tag=tradetweaks.enchanter, tag=!tradetweaks.level2] at @s \
    if predicate tradetweaks:level/is_apprentice \
    run function tradetweaks:enchanter/trades/level2

execute as @e[tag=tradetweaks.enchanter, tag=!tradetweaks.level3] at @s \
    if predicate tradetweaks:level/is_journeyman \
    run function tradetweaks:enchanter/trades/level3

execute as @e[tag=tradetweaks.enchanter, tag=!tradetweaks.level4] at @s \
    if predicate tradetweaks:level/is_expert \
    run function tradetweaks:enchanter/trades/level4

execute as @e[tag=tradetweaks.enchanter, tag=!tradetweaks.level5] at @s \
    if predicate tradetweaks:level/is_master \
    run function tradetweaks:enchanter/trades/level5

#  Jobless
execute as @e[tag=tradetweaks.enchanter, tag=tradetweaks.level1] at @s \
    if predicate tradetweaks:job/is_jobless \
    run function tradetweaks:enchanter/trades/jobless

execute as @e[tag=tradetweaks.enchanter] at @s \
    if predicate tradetweaks:job/is_jobless \
    run tag @s remove tradetweaks.enchanter

#  New Enchanter
execute as @e[type=villager, tag=!tradetweaks.enchanter] at @s \
    unless predicate tradetweaks:job/is_custom \
    if predicate tradetweaks:job/new \
    if function tradetweaks:enchanter/is_enchanter \
    run tag @s add tradetweaks.enchanter