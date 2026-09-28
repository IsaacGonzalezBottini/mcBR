
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {NoGravity:false, block_state:{Name: campfire}, Tags:[firecamp, spawned]}

clear @s fishing_rod[custom_data~{firecamp:true}] 1