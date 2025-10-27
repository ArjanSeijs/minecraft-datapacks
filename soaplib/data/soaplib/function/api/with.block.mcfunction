#> EXPIRMENTAL
# Exute API function with storage
# e.g /function loop {array: ..., function: ...,} where array is in storage S on path P instead
# /function with.storage {storage:S, path:P, api: loop, function: F, args : {}}

$data modify storage soaplib:exec api.with.block set from block ~ ~ ~ $(path)
$return run function soaplib:api/with.storage { \
    api:"$(api)", \
    storage: "soaplib:exec", \
    path:"api.with.block", \
    function:"$(function)", \
    args : $(args), \
}