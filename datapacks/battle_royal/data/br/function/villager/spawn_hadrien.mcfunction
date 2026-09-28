execute at @e[tag=hadri] run summon villager ~ ~ ~ {Invulnerable:1b, NoAI:1b, VillagerData:{type:"swamp", profession:"shepherd", level:5}, Tags:[hadri_pnj], Offers:{Recipes:[]}, CustomName:{text: "Hadrien le Mongolien", color: green}}
execute as @e[tag=hadri] at @s run data modify entity @e[limit=1,tag=hadri_pnj, sort=nearest] Rotation set from entity @s Rotation 
execute as @e[tag=hadri] at @s run data modify entity @e[limit=1,tag=hadri_pnj, sort=nearest] Offers.Recipes set value []

execute as @e[tag=hadri_pnj] run function br:villager/add_offer {"cost":"4", "maxUse": 999, "table": "br:items/epic/milk_bucket", "count": 1}
execute as @e[tag=hadri_pnj] run function br:villager/add_offer {"cost":"10", "maxUse": 999, "table": "br:items/uncommon/bow", "count": 1}
execute as @e[tag=hadri_pnj] run function br:villager/add_offer {"cost":"12", "maxUse": 999, "table": "br:items/epic/cake", "count": 1}
execute as @e[tag=hadri_pnj] run function br:villager/add_offer {"cost":"28", "maxUse": 999, "table": "br:items/epic/iron_chestplate", "count": 1}

