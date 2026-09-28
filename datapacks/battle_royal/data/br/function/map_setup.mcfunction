say setuping

gamerule advance_time false
gamerule advance_weather false
gamerule command_block_output false
gamerule mob_griefing false
gamerule spawn_mobs false
gamerule natural_health_regeneration false
gamerule immediate_respawn true


scoreboard objectives add game_info dummy
scoreboard players set players_ingame game_info 0
scoreboard players set started game_info 0

scoreboard objectives add ondeath deathCount
scoreboard objectives add damage dummy

scoreboard objectives add deenchant dummy

scoreboard objectives add enderpearl minecraft.used:minecraft.ender_pearl

scoreboard objectives add drop_system dummy
scoreboard players set drop_selection drop_system 0

scoreboard objectives add last_hitted_boss dummy

scoreboard objectives add hp health

scoreboard objectives add rgdetection minecraft.used:fishing_rod
scoreboard objectives add rgcdetection minecraft.used:carrot_on_a_stick

scoreboard objectives add communist_mark dummy

stopwatch create golem_summon

function br:boss/boss_bar_setup



team add skeleton
team modify skeleton friendlyFire false



bossbar add adbar {"text":"addbar","color":"green"}
bossbar set adbar color green
bossbar set adbar players @a
bossbar set adbar visible true

stopwatch create adbar

scoreboard objectives add timer dummy

scoreboard players set game timer 0

scoreboard objectives add killstreak dummy
scoreboard players set @a killstreak 0

time set day


data modify storage br:variables offers set value {}

scoreboard objectives add mario dummy

scoreboard objectives add bm dummy

scoreboard objectives add firecamp dummy

scoreboard objectives add dev_stuff dummy
scoreboard players set max dev_stuff 100
scoreboard players set ate dev_stuff 0
scoreboard players set devour dev_stuff 0

scoreboard objectives add mannequin dummy

scoreboard objectives add faux dummy

scoreboard objectives add dev_bow dummy

scoreboard objectives add fast_crossbow dummy

