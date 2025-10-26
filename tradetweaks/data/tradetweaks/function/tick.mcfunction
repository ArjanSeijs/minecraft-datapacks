#> tradetweaks:tick

execute as @e[type=villager, tag=!tradetweaks.level0] \
    if predicate tradetweaks:is_librarian \
    run function tradetweaks:librarian/trades/level0