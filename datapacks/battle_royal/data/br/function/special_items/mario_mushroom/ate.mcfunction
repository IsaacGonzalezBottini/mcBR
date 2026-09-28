scoreboard players set @s mario 140

attribute @s attack_damage modifier add mario_dmg 1.5 add_multiplied_total
attribute @s scale modifier add mario_scale 2 add_multiplied_total
effect give @s resistance 7 1 true

advancement revoke @s only br:mario_mushroom