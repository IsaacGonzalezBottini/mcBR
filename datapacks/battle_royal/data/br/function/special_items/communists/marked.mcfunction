execute as @e if score @s communist_mark matches 0.. run scoreboard players remove @s communist_mark 1
execute as @e if score @s communist_mark matches 0.. at @s run particle dust{"color":[1.0, 0.0, 0.0], scale:1} ~ ~2.5 ~ 0 0 0 0.1 2 normal @a
execute as @e if score @s communist_mark matches 0 run scoreboard players reset @s communist_mark
