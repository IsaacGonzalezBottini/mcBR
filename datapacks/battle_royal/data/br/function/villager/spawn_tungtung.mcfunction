execute at @e[tag=tung_tung] run summon villager ~ ~ ~ {Invulnerable:1b, NoAI:1b, VillagerData:{type:"snow", profession:"farmer", level:5}, Tags:[tung_tung_pnj], Offers:{Recipes:[]}, CustomName:{text: "Tung Tung Tung", color: green}}
execute as @e[tag=tung_tung] at @s run data modify entity @e[limit=1,tag=tung_tung_pnj, sort=nearest] Rotation set from entity @s Rotation 
execute as @e[tag=tung_tung] at @s run data modify entity @e[limit=1,tag=tung_tung_pnj, sort=nearest] Offers.Recipes set value []

execute as @e[tag=tung_tung_pnj] run function br:villager/add_offer {"cost":"1", "maxUse": 999, "table": "br:items/common/arrow", "count": 3}
execute as @e[tag=tung_tung_pnj] run function br:villager/add_offer {"cost":"10", "maxUse": 999, "table": "br:items/rare/poison_arrow", "count": 3}
execute as @e[tag=tung_tung_pnj] run function br:villager/add_offer {"cost":"10", "maxUse": 999, "table": "br:items/rare/weakness_arrow", "count": 3}
execute as @e[tag=tung_tung_pnj] run function br:villager/add_offer {"cost":"25", "maxUse": 999, "table": "br:items/epic/wither_arrow", "count": 4}
execute as @e[tag=tung_tung_pnj] run function br:villager/add_offer {"cost":"37", "maxUse": 999, "table": "br:items/shop/cross_bow_multi", "count": 1}
