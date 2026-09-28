execute if score started game_info matches 0 as @e[tag=!admin] run gamemode adventure
execute if score started game_info matches 0 as @e[tag=!admin] run clear @s
#spawnpoint @a ~ ~ ~
execute if score started game_info matches 0 run gamerule pvp false

#execute if score started game_info matches 0 run title @a actionbar {"text":"En attente de lancement...", color:"green", bold:true}