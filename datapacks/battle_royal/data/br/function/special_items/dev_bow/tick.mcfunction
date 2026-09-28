


execute as @a[tag=using_dev_bow] if score @s dev_bow matches 3.. run scoreboard players remove @s dev_bow 1
execute as @a[tag=!using_dev_bow] run scoreboard players set @s dev_bow 60

execute as @a[tag=using_dev_bow] run title @s actionbar "||||||||||||"
execute as @a[tag=using_dev_bow] if score @s dev_bow matches 21..30 run title @s actionbar [{"text": "|||", "color": "red"},{"text": "|||||||||", "color": "white"}]
execute as @a[tag=using_dev_bow] if score @s dev_bow matches 11..20 run title @s actionbar [{"text": "||||||", "color": "red"},{"text": "||||||", "color": "white"}]
execute as @a[tag=using_dev_bow] if score @s dev_bow matches 3..10 run title @s actionbar [{"text": "|||||||||", "color": "red"},{"text": "|||", "color": "white"}]
execute as @a[tag=using_dev_bow] if score @s dev_bow matches 2 run title @s actionbar [{"text": "||||||||||||", "color": "blue"}]
execute as @a[tag=!using_dev_bow] if data entity @s SelectedItem.components."minecraft:custom_data".dev_bow run title @s actionbar ""


execute as @e[tag=!dev_bow_arrow, type=arrow] if data entity @s weapon.components."minecraft:custom_data".dev_bow run function br:special_items/dev_bow/handle_arrow with entity @s
execute as @e[tag=dev_bow_arrow_charged, type=arrow] at @s run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0 10 force
tag @a remove using_dev_bow



