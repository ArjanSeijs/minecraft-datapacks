function tradetweaks:lib/trade/set {index:0, trade: {xp: 2, buy: {id: "minecraft:paper", count: 24}, sell: {id: "minecraft:emerald", count: 1}, priceMultiplier: 0.05f, maxUses: 16, demand: -32}}
function tradetweaks:lib/trade/set {index:1, trade: {xp: 2, buy: {id: "minecraft:emerald", count: 9}, sell: {id: "minecraft:bookshelf", count: 1}, priceMultiplier: 0.05f, maxUses: 12, demand: -24}}
tag @s add tradetweaks.level0

data modify entity @s CustomName set value "Enchanter"
data modify entity @s CustomNameVisible set value 0b