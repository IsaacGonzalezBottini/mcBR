execute at @e[tag=golem_boss] run summon iron_golem ~ ~ ~ {PersistenceRequired:1b,Tags:[mini_golem,spawned_mg],attributes:[{id:scale, base:0.5},{id:movement_speed,base:0.5},{id:attack_damage,base:1},{id:max_health,base:10}],DeathLootTable:""}
data modify entity @e[limit=1,tag=spawned_mg] angry_at set from entity @s angry_at
data modify entity @e[limit=1,tag=spawned_mg] anger_end_time set from entity @s anger_end_time
execute as @e[limit=1,tag=spawned_mg] run scoreboard players set @s last_hitted_boss 400
tag @e[tag=spawned_mg] remove spawned_mg
