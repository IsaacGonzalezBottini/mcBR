team leave @e
team join skeleton @s
kill @e[tag=sk_soldier]
summon skeleton ~ ~ ~ {equipment:{head:{id:iron_helmet},mainhand:{id:bone}},drop_chances:{head:0},attributes:[{id:max_health,base:10}],Tags:[sk_soldier,spawned_sk],DeathLootTable:""}
summon skeleton ~ ~ ~ {equipment:{head:{id:iron_helmet},mainhand:{id:bone}},drop_chances:{head:0},attributes:[{id:max_health,base:10}],Tags:[sk_soldier,spawned_sk],DeathLootTable:""}
summon skeleton ~ ~ ~ {equipment:{head:{id:iron_helmet},mainhand:{id:bone}},drop_chances:{head:0},attributes:[{id:max_health,base:10}],Tags:[sk_soldier,spawned_sk],DeathLootTable:""}
spreadplayers ~ ~ 2 2 false @e[tag=sk_soldier]
team join skeleton @e[tag=spawned_sk]
tag @e[tag=spawned_sk] remove spawned_sk