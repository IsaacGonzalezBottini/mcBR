execute at @e[tag=breeze_spawner] run bossbar set breeze players
execute at @e[tag=breeze_spawner] if entity @e[tag=breeze_boss] run bossbar set breeze players @a[distance=..10]
execute store result bossbar breeze value run data get entity @e[limit=1,tag=breeze_boss] Health
execute at @e[tag=breeze_spawner] if entity @e[tag=breeze_boss,distance=10..] run tp @e[tag=breeze_boss,distance=10..] ~ ~ ~

execute as @e[tag=breeze_boss] unless score @s last_hitted_boss matches ..1 run scoreboard players remove @s last_hitted_boss 1
execute as @e[tag=breeze_boss] if score @s last_hitted_boss matches ..1 unless data entity @s active_effects[{id:"minecraft:regeneration"}] run effect give @s regeneration 5 5

execute as @e[tag=breeze_boss] if data entity @s {last_hurt_by_player_memory_time:100} run scoreboard players set @s last_hitted_boss 600
execute as @e[tag=breeze_boss] if data entity @s {last_hurt_by_player_memory_time:100} run effect clear @s regeneration
