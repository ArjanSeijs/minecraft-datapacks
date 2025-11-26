execute if entity @s[type=!minecraft:block_display] if entity @s[type=!minecraft:item_display] run return fail
execute if data entity @s Passengers[0] on passengers run function soaplib:lib/kill

kill @s