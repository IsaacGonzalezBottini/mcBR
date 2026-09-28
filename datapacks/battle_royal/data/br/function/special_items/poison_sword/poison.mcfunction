$execute as @e[limit=1,nbt={last_hurt_by_player_memory_time:100,last_hurt_by_player:$(UUID)}] run tag @s add poison_sword

execute as @e[tag=poison_sword,type=!zombie,type=!skeleton] run effect give @s poison 5 1

tag @e[tag=poison_sword] remove poison_sword
