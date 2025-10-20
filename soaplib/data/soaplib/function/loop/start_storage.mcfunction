#> soaplib:loop/start_storage
# @context @s

$data modify storage soaplib:exec loop.array set from storage $(storage) $(path)
$function soaplib:loop/start {function:"$(function)"}