tag @s add throwed_axe

execute at @s run summon item_display ~ ~ ~ {item:{id:iron_axe}, Tags:[axe_display]}
execute at @s run ride @e[limit=1, sort=nearest, tag=axe_display] mount @s

say hi