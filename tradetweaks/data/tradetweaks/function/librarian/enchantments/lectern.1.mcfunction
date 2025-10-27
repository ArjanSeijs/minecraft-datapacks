
$tellraw @a[tag=debug] "[DEBUG]: Enchantment:$(value)"

# Append new enchantment
$execute if block ~ ~ ~ minecraft:lectern \
        if data block ~ ~ ~ Book.components."minecraft:stored_enchantments"."$(value)" \
        unless data block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array[{id:"$(value)"}] \
        run data modify block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array append value {id:"$(value)"}

# Set enchantment level
$execute if block ~ ~ ~ minecraft:lectern \
        if data block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array[{id:"$(value)"}] \
        run data modify block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array[{id:"$(value)"}].level \
        set from block ~ ~ ~ Book.components."minecraft:stored_enchantments"."$(value)" 

# Remove item if no longer present
$execute if block ~ ~ ~ minecraft:lectern \
        unless data block ~ ~ ~ Book.components."minecraft:stored_enchantments"."$(value)" \
        if data block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array[{id:"$(value)"}] \
        run data remove block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array[{id:"$(value)"}]

# Set enchantment dict
$execute if block ~ ~ ~ minecraft:lectern \
        if data block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array[{id:"$(value)"}] \
        run data modify block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array[{id:"$(value)"}].enchantment set value {"$(value)":0}

# Set enchantment dict
$execute if block ~ ~ ~ minecraft:lectern \
        if data block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array[{id:"$(value)"}] \
        run data modify block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.enchantments.array[{id:"$(value)"}].enchantment."$(value)" \
        set from block ~ ~ ~ Book.components."minecraft:stored_enchantments"."$(value)" 