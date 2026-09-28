execute at @e[tag=iron_golem_spawner] run bossbar set golem players
execute at @e[tag=iron_golem_spawner] if entity @e[tag=golem_boss] run bossbar set golem players @a[distance=..10]
execute store result bossbar golem value run data get entity @e[limit=1,tag=golem_boss] Health
execute at @e[tag=iron_golem_spawner] if entity @e[tag=golem_boss,distance=10..] run tp @e[tag=golem_boss,distance=10..] ~ ~ ~

execute as @e[tag=golem_boss] unless score @s last_hitted_boss matches ..1 run scoreboard players remove @s last_hitted_boss 1
execute as @e[tag=golem_boss] if score @s last_hitted_boss matches ..1 unless data entity @s active_effects[{id:"minecraft:regeneration"}] run effect give @s regeneration 5 5

execute as @e[tag=golem_boss] if data entity @s {last_hurt_by_player_memory_time:100} run scoreboard players set @s last_hitted_boss 600
execute as @e[tag=golem_boss] if data entity @s {last_hurt_by_player_memory_time:100} run effect clear @s regeneration

execute as @e[tag=mini_golem] unless score @s last_hitted_boss matches ..1 run scoreboard players remove @s last_hitted_boss 1
execute as @e[tag=mini_golem] if score @s last_hitted_boss matches ..1 run kill @s