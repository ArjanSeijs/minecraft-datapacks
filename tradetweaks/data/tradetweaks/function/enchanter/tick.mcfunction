execute as @e[tag=tradetweaks.enchanter, tag=!tradetweaks.level0] \
    unless predicate tradetweaks:job/is_jobless \
    run function tradetweaks:enchanter/trades/level0

execute as @e[tag=tradetweaks.enchanter, tag=tradetweaks.level0] \
    if predicate tradetweaks:job/is_jobless \
    run function tradetweaks:enchanter/trades/jobless

execute as @e[tag=tradetweaks.enchanter] \
    if predicate tradetweaks:job/is_jobless \
    run tag @s remove tradetweaks.enchanter

execute as @e[type=villager, tag=!tradetweaks.enchanter] \
    unless predicate tradetweaks:job/is_custom \
    if predicate tradetweaks:job/new \
    if function tradetweaks:enchanter/is_enchanter \
    run tag @s add tradetweaks.enchanter