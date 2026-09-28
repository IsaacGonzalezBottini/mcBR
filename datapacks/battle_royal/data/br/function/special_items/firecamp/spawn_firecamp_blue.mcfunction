
function br:utils/clear

execute at @s run summon block_display ~-0.5 ~ ~-0.5 {NoGravity:false, block_state:{Name: soul_campfire}, Tags:[firecamp_blue, spawned], data:{owner:[I; 0, 0, 0, 0]}}
execute as @s at @s store result entity @e[limit=1,sort=nearest,tag=spawned,tag=firecamp_blue] data.owner[0] int 1 run data get entity @s UUID[0]
execute as @s at @s store result entity @e[limit=1,sort=nearest,tag=spawned,tag=firecamp_blue] data.owner[1] int 1 run data get entity @s UUID[1]
execute as @s at @s store result entity @e[limit=1,sort=nearest,tag=spawned,tag=firecamp_blue] data.owner[2] int 1 run data get entity @s UUID[2]
execute as @s at @s store result entity @e[limit=1,sort=nearest,tag=spawned,tag=firecamp_blue] data.owner[3] int 1 run data get entity @s UUID[3]
scoreboard players set @e[tag=spawned, tag=firecamp_blue] firecamp 3600
tag @e[tag=spawned, tag=firecamp_blue] remove spawned

#clear @s carrot_on_a_stick[custom_data~{firecamp_blue:true}] 1