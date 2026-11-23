#> tradetweaks:lib/librarian/get_lectern_enchantments.1

# Preconditions
execute unless predicate soaplib:api/villager/level/is_master run return fail
execute unless predicate soaplib:api/villager/job/is_librarian run return fail
execute unless function tradetweaks:lib/librarian/librarian_has_custom_trade run return fail

# Set to guide if no template in lectern
execute unless function tradetweaks:lib/librarian/lectern_has_template run return run function tradetweaks:lib/librarian/get_lectern_enchantments.else

# If modified through enchant command or creative the enchantments will be in enchantments instead of stored_enchantments
data modify block ~ ~ ~ Book.components."minecraft:stored_enchantments" merge from block ~ ~ ~ Book.components."minecraft:enchantments"
data modify block ~ ~ ~ Book.components."enchantments" set value {}

# Update trade to enchanted book with enchantments stored from a template if it currently is a
data modify entity @s Offers.Recipes[{sell:{components:{"minecraft:custom_data":{"tradetweaks:guide":1}}}}].sell set value \
    {\
        id: "minecraft:enchanted_book",\
        components: {\
            "minecraft:custom_data":{"tradetweaks:enchanted_book":1},\
            "minecraft:stored_enchantments":{},\
        }\
    }
data modify entity @s Offers.Recipes[{sell:{components:{"minecraft:custom_data":{"tradetweaks:enchanted_book":1}}}}].sell.components."minecraft:stored_enchantments" \
    set from block ~ ~ ~ Book.components."minecraft:stored_enchantments"