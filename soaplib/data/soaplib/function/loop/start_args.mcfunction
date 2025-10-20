#> soaplib:loop/start_args
# @context @s

$data modify storage soaplib:exec loop.array set value $(array)
$function soaplib:loop/start {function:"$(function)", storage:"soaplib:exec" , path:"loop.array"}