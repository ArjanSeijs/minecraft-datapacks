tellraw @a "> Soaplib Loaded"
function #soaplib:onload
schedule function soaplib:tick1s 1s

scoreboard objectives add soaplib.arith.x dummy
scoreboard objectives add soaplib.arith.y dummy