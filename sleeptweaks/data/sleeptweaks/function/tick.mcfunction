#> sleeptweaks:tick
# 

execute as @a[tag=!sleeptweaks.ignore] \
    if predicate sleeptweaks:morning \
    if score @s sleeptweaks.sleeptimer matches 1.. \
        run function sleeptweaks:lib/sleep

execute as @a store result score @s sleeptweaks.sleeptimer run data get entity @s SleepTimer