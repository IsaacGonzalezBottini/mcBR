effect give @e[distance=..5,tag=mini_golem,limit=1,sort=nearest] invisibility infinite 0 true
kill @e[distance=..5,tag=mini_golem,limit=1,sort=nearest]
particle explosion_emitter ~ ~ ~ 1 1 1 1 1
effect give @s slowness 5 10
advancement revoke @s only br:minigolem_hit