
execute as @e[tag=seats] at @s run tp @s ^ ^ ^0.2 facing entity @e[limit=1, tag=drop_system_stop]
execute as @e[tag=dragon] at @e[tag=seats, limit=1] run tp @s ~ ~-6 ~ facing entity @e[limit=1, tag=drop_system_start]

execute as @e[tag=seats] at @s if entity @e[distance=..10, tag=drop_system_stop] run kill @e[tag=bus]