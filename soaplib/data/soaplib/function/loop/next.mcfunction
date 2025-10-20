#> soaplib:loop/next
# @context @s

execute unless data storage soaplib:exec loop.array[0] run return run data get storage soaplib:exec loop.next.index

# Set next value
data modify storage soaplib:exec loop.next.value set from storage soaplib:exec loop.array[0]

# Execute function
$function $(function) with storage soaplib:exec loop.next

# Set next index
execute store result score #soaplib soaplib.arith.x run data get storage soaplib:exec loop.next.index
execute store result storage soaplib:exec loop.next.index long 1 run function soaplib:arith/inc

# Pop
data remove storage soaplib:exec loop.array[0]
# Next iteration
$function soaplib:loop/next {function:"$(function)"}