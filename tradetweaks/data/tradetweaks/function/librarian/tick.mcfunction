#> tradetweaks:tick

# Remove tag if no longer librarian
execute as @e[tag=tradetweaks.level0] \
    if predicate tradetweaks:job/is_jobless \
    run tag @s remove tradetweaks.level0

# level0 trade for librarians
execute as @e[type=villager, tag=!tradetweaks.level0] \
    if predicate tradetweaks:job/is_librarian \
    run function tradetweaks:librarian/trades/level0