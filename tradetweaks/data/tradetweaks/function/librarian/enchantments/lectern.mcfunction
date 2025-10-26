function soaplib:debug/debug {f:"soaplib:lectern",m:"Lectern"}

execute unless block ~ ~ ~ lectern run return fail
execute unless data block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks run return fail

execute if block ~ ~ ~ minecraft:lectern run data modify block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks set value {enchantments:{array:[]}}

function soaplib:api/with.storage { \
    api: "soaplib:api/loop", \
    storage: "tradetweaks:config", \
    path: "enchantments", \
    function: "tradetweaks:librarian/enchantments/lectern.1", \
    args : {}, \
}

# Store Original Recipes
execute unless data block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.recipes \
    run data modify block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks.recipes set from entity @s Offers.Recipes

data modify entity @s Offers.Recipes set value []

function soaplib:api/with.block { \
    api: "soaplib:api/loop", \
    path: 'Book.components."minecraft:custom_data".tradetweaks.enchantments', \
    function: "tradetweaks:librarian/trades/book.loop", \
    args : {}, \
}