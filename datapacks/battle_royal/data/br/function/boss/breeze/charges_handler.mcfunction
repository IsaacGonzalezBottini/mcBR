execute as @e[type=minecraft:breeze_wind_charge, tag=!charges_handled] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[not_mount_cloud],Duration:100, Radius:4, potion_contents:{potion:"harming"}, custom_particle:{type:effect, color:16250100},NoGravity:false}
execute as @e[type=minecraft:breeze_wind_charge, tag=!charges_handled] run ride @e[limit=1,tag=not_mount_cloud] mount @s
execute as @e[type=minecraft:breeze_wind_charge, tag=!charges_handled] run tag @e[tag=not_mount_cloud,limit=1] remove not_mount_cloud
tag @e[type=minecraft:breeze_wind_charge, tag=!charges_handled] add charges_handled