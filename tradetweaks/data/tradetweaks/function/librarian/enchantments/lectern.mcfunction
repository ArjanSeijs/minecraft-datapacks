function soaplib:debug/debug {f:"soaplib:lectern",m:"Lectern"}

execute if block ~ ~ ~ lectern run data modify block ~ ~ ~ Book.components."minecraft:custom_data".tradetweaks set value {enchantments:{array:[]}}

function soaplib:api/with.storage { \
    api: "soaplib:api/loop", \
    storage: "tradetweaks:config", \
    path: "enchantments", \
    function: "tradetweaks:librarian/enchantments/lectern.1", \
    args : {}, \
}

data modify entity @s Offers.Recipes set value []

function soaplib:api/with.block { \
    api: "soaplib:api/loop", \
    path: 'Book.components."minecraft:custom_data".tradetweaks.enchantments', \
    function: "tradetweaks:librarian/trades/book.loop", \
    args : {}, \
}