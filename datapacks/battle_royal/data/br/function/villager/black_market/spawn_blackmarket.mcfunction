execute at @e[tag=black_market] run summon villager ~ ~ ~ {Invulnerable:1b, NoAI:1b, VillagerData:{type:"jungle", profession:"weaponsmith", level:5}, Tags:[black_market_pnj], Offers:{Recipes:[]}, CustomName:{text: "Marché Noir", color: black}}
execute as @e[tag=black_market] at @s run data modify entity @e[limit=1,tag=black_market_pnj, sort=nearest] Rotation set from entity @s Rotation 
execute as @e[tag=black_market] at @s run data modify entity @e[limit=1,tag=black_market_pnj, sort=nearest] Offers.Recipes set value []

function br:villager/black_market/black_market_trades_setup

execute as @e[tag=black_market_pnj] run function br:villager/black_market/get_trades