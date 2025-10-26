#> soaplib:api/loop.args
# @context @s

$data modify storage soaplib:exec loop.array set value $(array)
$return run function soaplib:lib/loop/start {function:"$(function)", storage:"soaplib:exec" , path:"loop.array"}