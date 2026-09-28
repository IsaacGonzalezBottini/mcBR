execute as @e[type=snowball] at @s if data entity @s Item.components."minecraft:custom_data".spawned run summon block_display ~ ~ ~ {Tags:[dyna,spawned]}
execute as @e[type=snowball] if data entity @s Item.components."minecraft:custom_data".spawned run data remove entity @s Item.components."minecraft:custom_data".spawned

execute as @e[tag=dyna,tag=spawned] at @s run ride @s mount @e[type=snowball,limit=1,sort=nearest,distance=..1]
tag @e[tag=dyna,tag=spawned] remove spawned

execute as @e[tag=dyna,tag=!spawned] at @s unless entity @e[type=snowball,distance=..1] run summon creeper ~ ~ ~ {}

execute as @e[tag=dyna,tag=!spawned] at @s unless entity @e[type=snowball,distance=..1] run kill @s


