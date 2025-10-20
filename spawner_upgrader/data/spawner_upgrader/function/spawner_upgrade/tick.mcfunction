#> This is the main function, that will run once per tick

# Get command
execute as @a[scores={spawner.get=1..}] run function spawner_upgrader:spawner_upgrade/command/block/exec
execute as @a[scores={spawner.get=1..}] run scoreboard players enable @s spawner.get
execute as @a[scores={spawner.get=1..}] run scoreboard players set @s spawner.get 0

# Max Spawn Delay
execute as @a[scores={spawner.maxdelay=1..}] run function spawner_upgrader:spawner_upgrade/raytrace/raystart {function:"spawner_upgrader:spawner_upgrade/command/command", args:{command:"execute store result block ~ ~ ~ MaxSpawnDelay int 20 run scoreboard players get @s spawner.maxdelay"}}
execute as @a[scores={spawner.maxdelay=1..}] run scoreboard players enable @s spawner.maxdelay
execute as @a[scores={spawner.maxdelay=1..}] run scoreboard players set @s spawner.maxdelay 0

# Min Spawn Delay
execute as @a[scores={spawner.mindelay=1..}] run function spawner_upgrader:spawner_upgrade/raytrace/raystart {function:"spawner_upgrader:spawner_upgrade/command/command", args:{command:"execute store result block ~ ~ ~ MinSpawnDelay int 20 run scoreboard players get @s spawner.mindelay"}}
execute as @a[scores={spawner.mindelay=1..}] run scoreboard players enable @s spawner.mindelay
execute as @a[scores={spawner.mindelay=1..}] run scoreboard players set @s spawner.mindelay 0

# Player Range
execute as @a[scores={spawner.playerrange=1..}] run function spawner_upgrader:spawner_upgrade/raytrace/raystart {function:"spawner_upgrader:spawner_upgrade/command/command", args:{command:"execute store result block ~ ~ ~ RequiredPlayerRange int 1 run scoreboard players get @s spawner.playerrange"}}
execute as @a[scores={spawner.playerrange=1..}] run scoreboard players enable @s spawner.playerrange
execute as @a[scores={spawner.playerrange=1..}] run scoreboard players set @s spawner.playerrange 0

# Max Nearby Entities
execute as @a[scores={spawner.entities=1..}] run function spawner_upgrader:spawner_upgrade/raytrace/raystart {function:"spawner_upgrader:spawner_upgrade/command/command", args:{command:"execute store result block ~ ~ ~ MaxNearbyEntities int 1 run scoreboard players get @s spawner.entities"}}
execute as @a[scores={spawner.entities=1..}] run scoreboard players enable @s spawner.entities
execute as @a[scores={spawner.entities=1..}] run scoreboard players set @s spawner.entities 0

# Entities Spawn Range
execute as @a[scores={spawner.range=1..}] run function spawner_upgrader:spawner_upgrade/raytrace/raystart {function:"spawner_upgrader:spawner_upgrade/command/command", args:{command:"execute store result block ~ ~ ~ SpawnRange int 1 run scoreboard players get @s spawner.range"}}
execute as @a[scores={spawner.range=1..}] run scoreboard players enable @s spawner.range
execute as @a[scores={spawner.range=1..}] run scoreboard players set @s spawner.range 0

# Entities Spawn Count
execute as @a[scores={spawner.count=1..}] run function spawner_upgrader:spawner_upgrade/raytrace/raystart {function:"spawner_upgrader:spawner_upgrade/command/command", args:{command:"execute store result block ~ ~ ~ SpawnCount int 1 run scoreboard players get @s spawner.count"}}
execute as @a[scores={spawner.count=1..}] run scoreboard players enable @s spawner.count
execute as @a[scores={spawner.count=1..}] run scoreboard players set @s spawner.count 0