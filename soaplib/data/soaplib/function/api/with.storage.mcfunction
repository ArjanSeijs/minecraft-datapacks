#> 
# Exute API function with storage
# e.g /function loop {array: ..., function: ...,} where array is in storage S on path P instead
# /function with.storage {storage:S, path:P, api: loop, function: F, args : {}}


$function soaplib:debug/debug {f:"soaplib:api.with.storage",m:"/$(api) from $(storage) $(path) /$(function) $(args) "}
$function soaplib:debug/debug {f:"soaplib:api.with.storage",m:"/function $(api) with storage soaplib:exec with.storage"}

$data modify storage soaplib:exec api.with.storage set from storage $(storage) $(path)
$data modify storage soaplib:exec api.with.storage.function set value "$(function)"
$data modify storage soaplib:exec api.with.storage.args set value "$(args)"
$return run function $(api) with storage soaplib:exec api.with.storage