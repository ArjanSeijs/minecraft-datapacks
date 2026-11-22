execute if predicate soaplib:api/villager/job/is_librarian run \
    function soaplib:api/villager/trade/prepend \
    {trade: {xp: 2, \
        buy: {id: "minecraft:emerald", count: 24}, \
        buyB: {id: "minecraft:book", count: 1}, \
        sell: {id: "minecraft:enchanted_book", count: 1, components: {"minecraft:stored_enchantments": {}, "minecraft:lore": ["Put template in lectern"], "minecraft:custom_data": {"tt:template":1}}},\
    priceMultiplier: 0.05f, maxUses: 16, demand: -32}}