execute as @e[type=minecraft:villager,tag=!soaplib.lvl1,tag=!global.ignore] \
    if predicate soaplib:api/villager/level/lvl1 \
    unless predicate soaplib:api/villager/job/is_jobless \
    run function soaplib:lib/villager/lvl1
    
execute as @e[type=minecraft:villager,tag=!soaplib.lvl2,tag=!global.ignore] if predicate soaplib:api/villager/level/lvl2 run function soaplib:lib/villager/lvl2
execute as @e[type=minecraft:villager,tag=!soaplib.lvl3,tag=!global.ignore] if predicate soaplib:api/villager/level/lvl3 run function soaplib:lib/villager/lvl3
execute as @e[type=minecraft:villager,tag=!soaplib.lvl4,tag=!global.ignore] if predicate soaplib:api/villager/level/lvl4 run function soaplib:lib/villager/lvl4
execute as @e[type=minecraft:villager,tag=!soaplib.lvl5,tag=!global.ignore] if predicate soaplib:api/villager/level/lvl5 run function soaplib:lib/villager/lvl5

execute as @e[type=minecraft:villager,tag=soaplib.lvl1,tag=!global.ignore] if predicate soaplib:api/villager/level/lvl1 \
    if predicate soaplib:api/villager/job/is_jobless run tag @s remove soaplib.lvl1