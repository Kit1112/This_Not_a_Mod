#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 126 run tp @s ^-0.529 ^-2.51 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^-0.533 ^-2.513 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^-0.536 ^-2.516 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^-0.539 ^-2.52 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^-0.542 ^-2.523 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^-0.975 ^-2.955 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^-1.734 ^-3.715 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^-2.602 ^-4.583 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^-3.412 ^-5.393 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:699}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:700}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:701}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:702}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:703}