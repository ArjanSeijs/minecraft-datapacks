#> soaplib:lib/loop/start
# @context @s

$function soaplib:debug/debug {f:"soaplib:lib/loop/start",m:"$(function)"}

data modify storage soaplib:exec loop.next.index set value 0

$function soaplib:lib/loop/next {function:"$(function)"}

return run data get storage soaplib:exec loop.next.index