$execute at @s run loot spawn ~ ~ ~ loot $(table)
execute at @s run data modify storage br:variables offers set from entity @e[type=item, distance=..2,limit=1] Item
$data modify storage br:variables offers.count set value $(count)
$data modify storage br:variables offers.cost set value $(cost)
$data modify storage br:variables offers.maxUse set value $(maxUse)
execute at @s run function br:villager/add_offer_item with storage br:variables offers
execute at @s run kill @e[type=item,distance=..2]