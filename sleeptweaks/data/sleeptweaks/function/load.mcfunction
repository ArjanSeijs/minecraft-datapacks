#> sleeptweaks:load
# 

scoreboard objectives add sleeptweaks.sleeptimer dummy

execute unless data storage sleeptweaks:config effects run \
    data modify storage sleeptweaks:config effects set value [ \ 
    {effect: "minecraft:regeneration", duration:10,  amplifier:2  }, \
    {effect: "minecraft:hunger",       duration:2,   amplifier:255}, \
    {effect: "minecraft:absorption",   duration:300, amplifier:0  }]

execute unless data storage sleeptweaks:config xp run \
    data modify storage sleeptweaks:config xp set value {amount:1,type:"levels"}

# VSCode
#declare storage sleeptweaks:config
#declare storage sleeptweaks:exec