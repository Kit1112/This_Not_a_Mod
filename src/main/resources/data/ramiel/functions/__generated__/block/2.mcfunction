#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s at_timer 1
execute if score @s at_timer matches 30.. run kill @s
item replace entity @s[scores={at_timer=7..}] armor.head with orange_dye{CustomModelData:1}
execute as @e[tag=at_field] at @s facing entity @e[tag=RAMIEL,limit=1] feet run tp @s ~ ~ ~ ~180 ~