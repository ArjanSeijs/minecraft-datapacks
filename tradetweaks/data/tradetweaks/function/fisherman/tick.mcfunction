execute as @e[tag=tradetweaks.fisherman] \
    if predicate tradetweaks:job/is_jobless \
    run tag @s remove tradetweaks.fisherman

execute as @e[type=villager, tag=!tradetweaks.fisherman] \
    unless predicate tradetweaks:job/is_any \
    if predicate tradetweaks:job/new \
    if function tradetweaks:fisherman/is_fisherman \
    run tag @s add tradetweaks.fisherman