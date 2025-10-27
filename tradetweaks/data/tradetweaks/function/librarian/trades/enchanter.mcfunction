# Debugging Purposes:
#function tradetweaks:lib/trade/add {index:2, trade: {xp: 2, buy: {id: "minecraft:emerald", count: 9}, sell: {id: "minecraft:enchanted_book", count: 1}, priceMultiplier: 0.05f, maxUses: 12, demand: -24}}

function soaplib:debug/debug {f:"soaplib:level5",m:""}

function tradetweaks:lib/jobsite { \
    storage_out: "tradetweaks:exec", \
    path_out:"jobsite", \
}

function soaplib:api/with.storage { \
    api:"soaplib:api/execute_at", \
    storage: "tradetweaks:exec", \
    path:"jobsite", \
    function:"tradetweaks:librarian/enchantments/lectern", \
    args : {}, \
}