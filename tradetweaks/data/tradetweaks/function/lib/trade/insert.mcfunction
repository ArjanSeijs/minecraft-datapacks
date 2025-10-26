#> tradetweaks:lib/trade/insert
# @input trade
#   {xp: int, 
#   buy: {id: id, count: int}, 
#   sell: {id: id, count: int}, 
#   priceMultiplier: float, 
#   maxUses: int, 
#   demand: int}

$data modify entity @s Offers.Recipes insert $(index) value $(trade)