$execute as @e[limit=1,nbt={last_hurt_by_player_memory_time:100,last_hurt_by_player:$(UUID)}] run tag @s add executed 

execute as @e[tag=executed] store result score @s faux run data get entity @s Health
execute as @e[tag=executed] if score @s faux matches ..4 run damage @s 10000

tag @e remove executed