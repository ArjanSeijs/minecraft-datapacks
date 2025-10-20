$execute if block ~ ~ ~ minecraft:spawner run function spawner_upgrader:spawner_upgrade/raytrace/hit {function:"$(function)", args:$(args)}
scoreboard players remove @s spawner.ray_steps 1
$execute if score @s spawner.ray_steps matches 1.. if score @s spawner.ray_success matches 0 positioned ^ ^ ^0.2 run function spawner_upgrader:spawner_upgrade/raytrace/ray {function:"$(function)",args:$(args)}
particle minecraft:poof