#> mountequipment:on_enchanting_table_used
# @context player
function soaplib:api/component/patch {item: "#minecraft:harnesses", modifier: "soaplib:set_enchantable", condition: "!minecraft:enchantable"}
advancement revoke @s only mountequipment:triggers/on_enchanting_table_used