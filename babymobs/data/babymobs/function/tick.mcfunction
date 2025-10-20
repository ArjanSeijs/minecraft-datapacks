#> babymobs:tick
# 

execute as @a[scores={babymob.add=1..}] at @s run function babymobs:add/trigger
execute as @a[scores={babymob.remove=1..}] at @s run function babymobs:remove/trigger
