data modify storage tradetweaks:exec set_trades.array set from block ~ ~ ~ Items

data modify entity @s Offers.Recipes set value []

function soaplib:api/with.storage { \
    "api":"soaplib:api/loop", \
    "storage":"tradetweaks:exec", \
    "path": set_trades, \
    "function": "tradetweaks:enchanter/set_trades.2", \
    "args" : {} \
}