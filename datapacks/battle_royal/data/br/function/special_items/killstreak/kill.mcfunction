advancement revoke @s only br:killstreak

execute unless items entity @s container.* minecraft:coal run return fail





execute if score @s killstreak matches 0 run tellraw @s [{"text":"KillStreak", color: "dark_gray", "bold":true}, {"text": " : 1 kill  +30 émeraude !", bold: false, color: "white"}]
execute if score @s killstreak matches 0 run loot give @s loot br:items/uncommon/emerald

execute if score @s killstreak matches 1 run tellraw @s [{"text":"KillStreak", color: "dark_gray", "bold":true}, {"text": " : 2 kill  +10% vitesse de déplacement", bold: false, color: "white"}]
execute if score @s killstreak matches 1 run attribute @s movement_speed modifier add killstreak_mov 0.01 add_value

execute if score @s killstreak matches 2 run tellraw @s [{"text":"KillStreak", color: "dark_gray", "bold":true}, {"text": " : 3 kill  +2 coeurs", bold: false, color: "white"}]
execute if score @s killstreak matches 2 run attribute @s max_health modifier add killstreak_hp 4 add_value

execute if score @s killstreak matches 3 run tellraw @s [{"text":"KillStreak", color: "dark_gray", "bold":true}, {"text": " : 4 kill  +0.5 dégat", bold: false, color: "white"}]
execute if score @s killstreak matches 3 run attribute @s attack_damage modifier add killstreak_dmg 0.5 add_value


scoreboard players add @s killstreak 1

execute if score @s killstreak matches 5.. run tellraw @s [{"text":"KillStreak", color: "dark_gray", "bold":true}, {"text": " : ", bold: false, color: "white"}, {"score": {name: "@s", objective: "killstreak"}, "color": "white", bold: false}, {"text": " kill  gagnez 1 item doré", "color": "white", bold: false}]
execute if score @s killstreak matches 5.. run loot give @s loot br:items/golden/golden_items