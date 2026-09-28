
execute as @e[tag=mannequin_test] run data modify entity @s CustomName.extra[0] set string entity @s Health
execute as @e[tag=mannequin_test] unless data entity @s last_hurt_by_player_memory_time run effect give @s instant_health 1 200 true