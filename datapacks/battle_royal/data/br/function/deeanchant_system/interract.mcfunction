execute unless data entity @s SelectedItem.components."minecraft:enchantments" run tellraw @s {text:"Vous devez donner un item enchanté !", color:"red"}
execute unless data entity @s SelectedItem.components."minecraft:enchantments" run return run advancement revoke @s only br:deenchant

data modify storage br:deenchant values.item set from entity @s SelectedItem.id
data modify storage br:deenchant values.compo set from entity @s SelectedItem.components
data modify storage br:deenchant values.enchant set from entity @s SelectedItem.components."minecraft:enchantments"
data remove storage br:deenchant values.compo."minecraft:enchantments"

execute at @e[limit=1,tag=deenchant] run function br:deeanchant_system/spawn with storage br:deenchant values

function br:deeanchant_system/clear with storage br:deenchant values



advancement revoke @s only br:deenchant