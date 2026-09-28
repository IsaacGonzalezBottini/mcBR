$execute as @e[limit=1,nbt={last_hurt_by_player_memory_time:100,last_hurt_by_player:$(UUID)}] run tag @s add stunning

execute as @e[tag=stunning] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute as @e[tag=stunning] at @s run effect give @s slowness 5 10


tag @e[tag=stunning] remove stunning