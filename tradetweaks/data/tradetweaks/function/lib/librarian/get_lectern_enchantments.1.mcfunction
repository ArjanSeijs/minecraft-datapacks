#> tradetweaks:lib/librarian/get_lectern_enchantments.1

execute unless data entity @s Offers.Recipes[{sell:{components:{"minecraft:custom_data":{"tt:template":1}}}}].sell{id:"minecraft:enchanted_book"} run return fail
execute unless data block ~ ~ ~ Book.components."minecraft:stored_enchantments" run return fail

data modify entity @s Offers.Recipes[{sell:{components:{"minecraft:custom_data":{"tt:template":1}}}}].sell.components."minecraft:stored_enchantments" \
    set from block ~ ~ ~ Book.components."minecraft:stored_enchantments"

# execute store result entity @s Offers.Recipes[{custom_data:{"tt:template":1}}].buy.count int 1 \
#     run function tradetweaks:enchanter/trades/cost with entity @s Offers.Recipes[{custom_data:{"tt:template":1}}]