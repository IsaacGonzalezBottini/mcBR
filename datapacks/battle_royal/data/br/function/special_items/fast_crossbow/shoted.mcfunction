tag @s add shot_fast_crossbow
$execute as @s on origin if score @s fast_crossbow matches 8..14 run item modify entity @s weapon {function:"set_components", components:{charged_projectiles:[$(item)]}}
execute as @s on origin if score @s fast_crossbow matches 8..14 store result score @s fast_crossbow run random value 1..20