

execute as @e[type=snowball,tag=!throwed_axe] if data entity @s Item.components."minecraft:custom_data".throw_axe run function br:special_items/throw_axe/shoot