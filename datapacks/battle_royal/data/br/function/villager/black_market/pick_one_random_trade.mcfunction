#$random roll 0..$(ntrade)

execute if data storage br:variables {bm.ntrade:0} run say hi
function br:villager/black_market/put_rd_in_scoreboard with storage br:variables bm
scoreboard players remove rd bm 1
execute store result storage br:variables bm.rdtrade int 1 run scoreboard players get rd bm



function br:villager/black_market/delete_trade with storage br:variables bm