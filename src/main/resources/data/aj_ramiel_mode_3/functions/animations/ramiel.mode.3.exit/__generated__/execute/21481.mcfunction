#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-60f,0f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^2.912 ^-1.918 ^1.681 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^2.877 ^-1.918 ^1.661 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^2.84 ^-1.918 ^1.64 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^2.803 ^-1.918 ^1.619 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^2.766 ^-1.918 ^1.597 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^2.729 ^-1.918 ^1.575 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^2.691 ^-1.918 ^1.554 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^2.657 ^-1.918 ^1.534 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^2.623 ^-1.918 ^1.514 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^2.589 ^-1.918 ^1.495 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5195}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5187}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5188}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5189}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5190}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5189}