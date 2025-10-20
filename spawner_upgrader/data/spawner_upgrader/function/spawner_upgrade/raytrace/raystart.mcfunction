scoreboard players set @s spawner.ray_steps 50
scoreboard players set @s spawner.ray_success 0
$execute at @s anchored eyes positioned ^ ^ ^ anchored feet rotated as @s run function spawner_upgrader:spawner_upgrade/raytrace/ray {function:"$(function)", args:$(args)}
