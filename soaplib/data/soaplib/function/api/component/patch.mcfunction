#> soaplib:api/component/patch
# Globably patches all items adhering to a certain tag and condition in a players inventory with a item modifier.
# It executes the following for all inventories slots of a player:
# execute if items entity @s hotbar.0 $(tag)[$(condition)] run item modify entity @s hotbar.0 $(modifier)
# @example
#    function soaplib:api/component/patch {item: "#minecraft:harnesses", modifier: "soaplib:set_enchantable", condition: "!minecraft:enchantable"}
# @api
# @input item 
#   An item tag, or item namespace
# @input condition
#   An item component condition
# @input modifier
#   An 'item_modifier'
# @context player


$execute if items entity @s inventory.* $(item)[$(condition)] run return run function soaplib:lib/component/patch {item: "$(item)", modifier: "$(modifier)", condition: "$(condition)"}
$execute if items entity @s hotbar.* $(item)[$(condition)] run return run function soaplib:lib/component/patch {item: "$(item)", modifier: "$(modifier)", condition: "$(condition)"}
$execute if items entity @s armor.* $(item)[$(condition)] run return run function soaplib:lib/component/patch {item: "$(item)", modifier: "$(modifier)", condition: "$(condition)"}