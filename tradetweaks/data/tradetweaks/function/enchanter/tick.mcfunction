execute as @e[tag=tradetweaks.enchanter] \
    if predicate tradetweaks:job/is_jobless \
    run tag @s remove tradetweaks.enchanter

execute as @e[type=villager, tag=!tradetweaks.enchanter] \
    unless predicate tradetweaks:job/is_any \
    if predicate tradetweaks:job/new \
    if function tradetweaks:enchanter/is_enchanter \
    run tag @s add tradetweaks.enchanter