execute as @e[tag=golem_boss] at @s if entity @a[distance=..20] if data entity @s angry_at if stopwatch golem_summon 15.. run function br:boss/golem/summon_minigolem
execute if stopwatch golem_summon 15.. run stopwatch restart golem_summon
