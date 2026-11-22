#> tradetweaks:lib/jobsite

data modify storage tradetweaks:exec jobsite.x set from entity @s Brain.memories."minecraft:job_site".value.pos[0]
data modify storage tradetweaks:exec jobsite.y set from entity @s Brain.memories."minecraft:job_site".value.pos[1]
data modify storage tradetweaks:exec jobsite.z set from entity @s Brain.memories."minecraft:job_site".value.pos[2]
data modify storage tradetweaks:exec jobsite.dimension set from entity @s Brain.memories."minecraft:job_site".value.dimension
$data modify storage $(storage_out) $(path_out) set from storage tradetweaks:exec jobsite