scoreboard players set @e[tag=spawned, tag=firecamp] firecamp 600
tag @e[tag=spawned, tag=firecamp] remove spawned

scoreboard players remove @e[tag=firecamp] firecamp 1
execute as @e[tag=firecamp] if score @s firecamp matches 0 run kill @s


execute at @e[tag=firecamp] run particle large_smoke ~0.5 ~1 ~0.5 0.0 10 0.0 0 1 force
execute as @e[tag=firecamp] at @s run effect give @a[distance=..10, nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] regeneration 5 0