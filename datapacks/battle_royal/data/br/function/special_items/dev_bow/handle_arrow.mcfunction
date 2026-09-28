tag @s add dev_bow_arrow
$execute as @s if score @e[limit=1, nbt={UUID:$(Owner)}] dev_bow matches 2 run tag @s add dev_bow_arrow_charged
execute as @s[tag=dev_bow_arrow_charged] run data modify entity @s damage set value 4