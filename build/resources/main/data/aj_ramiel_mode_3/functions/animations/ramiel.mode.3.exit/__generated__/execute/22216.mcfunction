#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-30f,0f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^1.681 ^-1.918 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^1.661 ^-1.918 ^2.877 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^1.64 ^-1.918 ^2.84 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^1.619 ^-1.918 ^2.803 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^1.597 ^-1.918 ^2.766 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^1.575 ^-1.918 ^2.729 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^1.554 ^-1.918 ^2.691 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^1.534 ^-1.918 ^2.657 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^1.514 ^-1.918 ^2.623 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^1.495 ^-1.918 ^2.589 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5616}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5608}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5609}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5610}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5611}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5610}