#> sleeptweaks:lib/loop
# @context @s

execute if data storage sleeptweaks:exec loop[0] run function sleeptweaks:lib/effect with storage sleeptweaks:exec loop[0]
execute if data storage sleeptweaks:exec loop[0] run data remove storage sleeptweaks:exec loop[0]
execute if data storage sleeptweaks:exec loop[0] run function sleeptweaks:lib/loop