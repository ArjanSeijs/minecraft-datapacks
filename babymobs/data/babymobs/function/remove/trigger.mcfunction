#> babymobs:remove/trigger
# @context @s


execute positioned ^ ^ ^1 as @e[type=#babymobs:baby,distance=..5,tag=!global.ignore,sort=nearest,limit=1] if predicate babymobs:is_baby run function babymobs:remove/tag
scoreboard players set @s babymob.remove 0
scoreboard players enable @s babymob.remove