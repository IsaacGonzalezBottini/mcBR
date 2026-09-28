
execute store result score devour dev_stuff run data get entity @s SelectedItem.components."minecraft:custom_data".stack
execute at @s run tag @e[distance=..5,type=item] add item_dev
execute as @e[tag=item_dev] run execute store result score @s dev_stuff run data get entity @s Item.count
execute as @e[tag=item_dev] run scoreboard players operation devour dev_stuff += @s dev_stuff
execute at @e[tag=item_dev] run particle large_smoke ~ ~ ~ 0.0 0.0 0.0 0 5 normal
kill @e[tag=item_dev]


execute if score devour dev_stuff >= max dev_stuff run scoreboard players operation ate dev_stuff = devour dev_stuff
execute if score devour dev_stuff >= max dev_stuff run scoreboard players operation ate dev_stuff /= max dev_stuff
execute if score devour dev_stuff >= max dev_stuff run scoreboard players operation @s dev_stuff = ate dev_stuff
execute if score devour dev_stuff >= max dev_stuff run function br:special_items/dev_stuff/give_gift
execute if score devour dev_stuff >= max dev_stuff run scoreboard players operation devour dev_stuff %= max dev_stuff


execute store result storage br:variables dev_stuff.stack int 1 run scoreboard players get devour dev_stuff
function br:special_items/dev_stuff/modify_item with storage br:variables dev_stuff
execute store result entity @s SelectedItem.components."minecraft:custom_data".stack int 1 run scoreboard players get devour dev_stuff
