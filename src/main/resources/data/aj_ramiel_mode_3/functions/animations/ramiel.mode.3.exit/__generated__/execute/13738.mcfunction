#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,45f,-180f]
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-141.828f,41.303f,-176.972f]
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-137.711f,36.276f,-173.783f]
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-133.951f,31.674f,-171.447f]
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [54.139f,30.232f,27.272f]
execute if score #this.aj.anim aj.i matches 141..146 run tp @s ^-0.199 ^-2.496 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^-0.193 ^-2.691 ^-0.193 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^-0.179 ^-2.997 ^-0.179 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^-0.16 ^-3.389 ^-0.16 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^-0.145 ^-3.8 ^-0.145 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:792}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:791}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:856}
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:857}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:858}