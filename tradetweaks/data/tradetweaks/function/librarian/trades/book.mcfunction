
$function tradetweaks:lib/trade/add {trade: \
    {xp: 2, \
    buy: {id: "minecraft:emerald", count: $(level)0}, \
    sell: {id: "minecraft:enchanted_book", count: 1, components:{enchantments:{"$(id)":$(level)}}}, \
    priceMultiplier: 0.05f, maxUses: 12, demand: -24}}
