#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[type=armor_stand,tag=aj.ramiel_defeat.root_entity] run execute if entity @s[tag=aj.ramiel_defeat.animations.ramiel.defeat] at @s run function aj_ramiel_defeat:animations/ramiel.defeat/loop