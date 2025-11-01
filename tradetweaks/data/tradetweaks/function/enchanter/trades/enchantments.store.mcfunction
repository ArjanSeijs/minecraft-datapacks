$execute unless data entity @s Offers.Recipes[$(index)].sell{id:"minecraft:enchanted_book"} run return fail
$execute unless data block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:stored_enchantments" run return fail

$data modify entity @s Offers.Recipes[$(index)].sell.components."minecraft:stored_enchantments" \
    set from block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:stored_enchantments"

$execute store result entity @s Offers.Recipes[$(index)].buy.count int 1 \
    run function tradetweaks:enchanter/trades/cost with entity @s Offers.Recipes[$(index)]