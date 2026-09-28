

scoreboard players remove @e[tag=firecamp_blue] firecamp 1
execute as @e[tag=firecamp_blue] if score @s firecamp matches 0 run kill @s


execute at @e[tag=firecamp_blue] run particle large_smoke ~0.5 ~1 ~0.5 0.0 10 0.0 0 1 force

execute as @e[tag=firecamp_blue] at @s as @e[type=player,distance=..20,nbt=!{active_effects:[{id:"minecraft:regeneration",amplifier:1b}]}] run function br:special_items/firecamp/firecamp_blue_regen_functor with entity @e[limit=1,sort=nearest,tag=firecamp_blue] data

execute as @a run attribute @s armor modifier remove firecamp_blue_armor 
execute as @a[tag=firecamp_regen] run effect give @s regeneration 5 1
execute as @a[tag=firecamp_armor] run attribute @s armor modifier add firecamp_blue_armor -0.5 add_multiplied_total

tag @a remove firecamp_armor
tag @a remove firecamp_regen