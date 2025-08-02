#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,45f,-180f]
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.828f,41.303f,176.972f]
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [137.711f,36.276f,173.783f]
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [133.951f,31.674f,171.447f]
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.139f,30.232f,-27.272f]
execute if score #this.aj.anim aj.i matches 141..146 run tp @s ^-0.274 ^-1.362 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^-0.266 ^-1.174 ^-0.266 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^-0.246 ^-0.879 ^-0.246 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^-0.22 ^-0.502 ^-0.22 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^-0.199 ^-0.106 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:331}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:330}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:395}
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:396}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:397}