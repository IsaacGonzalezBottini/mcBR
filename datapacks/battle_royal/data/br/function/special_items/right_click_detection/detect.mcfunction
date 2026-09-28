execute as @a if score @s rgdetection matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".rg_functor at @s run function br:special_items/right_click_detection/exec with entity @s SelectedItem.components."minecraft:custom_data"
execute as @a if score @s rgdetection matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".rg_functor at @s run kill @e[type=fishing_bobber,limit=1,sort=nearest]

execute as @a if score @s rgcdetection matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".rg_functor at @s run function br:special_items/right_click_detection/exec with entity @s SelectedItem.components."minecraft:custom_data"


execute as @a if score @s rgdetection matches 1.. run scoreboard players set @s rgdetection 0
execute as @a if score @s rgcdetection matches 1.. run scoreboard players set @s rgcdetection 0