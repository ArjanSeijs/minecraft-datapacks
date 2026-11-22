#> tradetweaks:lib/trade/add
# @input trade
#   {xp: int, 
#   buy: {id: id, count: int}, 
#   sell: {id: id, count: int}, 
#   priceMultiplier: float, 
#   maxUses: int, 
#   demand: int}

$data modify entity @s Offers.Recipes prepend value $(trade)