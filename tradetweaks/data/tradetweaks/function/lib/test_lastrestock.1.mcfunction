$execute unless data entity @s {LastRestock:$(time)L} run return fail
say I Restocked!
playsound minecraft:entity.villager.work_cartographer neutral @a[distance=..20] ~ ~ ~ 100 0.5
return 1