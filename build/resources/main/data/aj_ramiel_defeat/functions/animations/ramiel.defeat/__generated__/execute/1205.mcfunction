#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,90f]
execute if score #this.aj.anim aj.i matches 0..4 run tp @s ^0 ^-1.918 ^-0.074 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-1.918 ^-0.073 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-1.918 ^-0.059 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0 ^-1.918 ^-0.047 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0 ^-1.918 ^-0.033 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:163}
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:164}
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:165}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:166}
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:167}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:168}
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:169}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:170}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:171}