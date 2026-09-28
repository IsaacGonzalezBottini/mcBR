$execute at @s as @e[distance=..6] if data entity @s {"last_hurt_by_player": $(UUID) } if data entity @s {"last_hurt_by_player_memory_time":100} if score @s communist_mark matches 0.. run tag @s add communist_marked_explode
execute as @e[tag=communist_marked_explode] run scoreboard players set @s communist_mark 1
execute as @e[tag=communist_marked_explode] at @s run summon firework_rocket ~ ~4 ~ {"FireworksItem":{"id":"firework_rocket",components:{"fireworks":{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:false,has_trail:false,colors:[I;11743532],fade_colors:[I;11743532]}]}}}}
execute as @e[tag=communist_marked_explode] run damage @s 12 player_attack
execute as @e[tag=communist_marked_explode] run tag @s remove communist_marked_explode