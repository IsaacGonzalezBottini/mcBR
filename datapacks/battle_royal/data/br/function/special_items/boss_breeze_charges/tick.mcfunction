
execute as @e[type=minecraft:wind_charge, tag=!charges_handled_item] if data entity @s item.components."minecraft:custom_data".breeze_charge run say hi

execute as @e[type=minecraft:wind_charge, tag=!charges_handled_item] if data entity @s item.components."minecraft:custom_data".breeze_charge at @s run summon area_effect_cloud ~ ~ ~ {Tags:[not_mount_cloud],Duration:100, Radius:4, potion_contents:{potion:"harming"}, custom_particle:{type:effect, color:16250100},NoGravity:false}
execute as @e[type=minecraft:wind_charge, tag=!charges_handled_item] if data entity @s item.components."minecraft:custom_data".breeze_charge run ride @e[limit=1,tag=not_mount_cloud] mount @s
execute as @e[type=minecraft:wind_charge, tag=!charges_handled_item] if data entity @s item.components."minecraft:custom_data".breeze_charge run tag @e[tag=not_mount_cloud,limit=1] remove not_mount_cloud
tag @e[type=minecraft:wind_charge, tag=!charges_handled_item] add charges_handled_item