execute at @e[tag=drop_system_start,limit=1] run summon ghast ~ ~16 ~ {NoAI:1b, Invulnerable:1b, Tags:[bus, seats], DeathLootTable:"", active_effects:[{id:invisibility, duration:1000, show_particles:false}]}
execute at @e[tag=drop_system_start,limit=1] run summon ender_dragon ~ ~10 ~ { Invulnerable:1b, Tags:[dragon, bus], DeathLootTable:""}
