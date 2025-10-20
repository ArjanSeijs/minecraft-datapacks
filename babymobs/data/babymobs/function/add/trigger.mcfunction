#> babymobs:add/trigger
# @context @s


execute positioned ^ ^ ^1 as @e[type=#babymobs:baby,distance=..5,tag=!global.ignore,sort=nearest,limit=1] if predicate babymobs:is_baby run function babymobs:add/tag
scoreboard players set @s babymob.add 0
scoreboard players enable @s babymob.add