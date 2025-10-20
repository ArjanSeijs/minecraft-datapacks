#> babymobs:tick_1s

execute as @e[tag=babymob] run data modify entity @s Age set value -12000
scoreboard players enable @a babymob.remove
scoreboard players enable @a babymob.add

schedule function babymobs:tick_1s 1s replace