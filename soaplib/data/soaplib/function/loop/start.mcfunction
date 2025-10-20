#> soaplib:loop/start
# @context @s

data modify storage soaplib:exec loop.next.index set value 0

$say function soaplib:loop/next {function:"$(function)"}
$function soaplib:loop/next {function:"$(function)"}
data remove storage soaplib:exec loop