execute unless data entity @s SelectedItem.components."minecraft:custom_data".gold_frag run tellraw @s {"text":"Vous devez avoir un fragment d'or !", "color":"red"}
execute unless data entity @s SelectedItem.components."minecraft:custom_data".gold_frag run return run advancement revoke @s only br:forge


clear @s raw_gold 1
loot spawn ^ ^1 ^1 loot br:items/golden/golden_items

execute as @e[tag=gold_forge,distance=..10] at @s run particle wax_on ~ ~1 ~ 0.5 0.5 0.5 1 90

 
advancement revoke @s only br:forge