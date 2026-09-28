


$function br:villager/black_market/generate_trade with storage br:variables bm.trades[$(rdtrade)]



$data remove storage br:variables bm.trades[$(rdtrade)]

execute store result storage br:variables bm.ntrade int 1 run data get storage br:variables bm.trades