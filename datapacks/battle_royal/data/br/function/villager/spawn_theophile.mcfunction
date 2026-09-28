execute at @e[tag=theophile] run summon villager ~ ~ ~ {Invulnerable:1b, NoAI:1b, VillagerData:{type:"taiga", profession:"butcher", level:5}, Tags:[theo_pnj], Offers:{Recipes:[]}, CustomName:{text: "Théophile Le Pédophile", color: green}}
execute as @e[tag=theophile] at @s run data modify entity @e[limit=1,tag=theo_pnj, sort=nearest] Rotation set from entity @s Rotation 
execute as @e[tag=theophile] at @s run data modify entity @e[limit=1,tag=theo_pnj, sort=nearest] Offers.Recipes set value []

execute as @e[tag=theo_pnj] run function br:villager/add_offer {"cost":"4", "maxUse": 999, "table": "br:items/common/steak", "count": 1}
execute as @e[tag=theo_pnj] run function br:villager/add_offer {"cost":"25", "maxUse": 999, "table": "br:items/epic/iron_sword", "count": 1}
execute as @e[tag=theo_pnj] run function br:villager/add_offer {"cost":"10", "maxUse": 999, "table": "br:items/epic/enderpearl", "count": 2}
