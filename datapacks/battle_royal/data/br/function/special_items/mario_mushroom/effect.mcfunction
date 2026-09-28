
execute as @a if score @s mario matches 1 run attribute @s scale modifier remove mario_scale
execute as @a if score @s mario matches 1 run attribute @s attack_damage modifier remove mario_dmg
execute as @a if score @s mario matches 1.. run scoreboard players remove @s mario 1