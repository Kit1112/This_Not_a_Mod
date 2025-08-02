#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.463f,32.643f,-30.554f]
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [137.376f,35.869f,173.558f]
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.664f,41.102f,176.826f]
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.757f,45.009f,-179.992f]
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.871f,45.159f,-179.853f]
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.985f,45.308f,-179.712f]
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.087f,45.442f,-179.584f]
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.19f,45.58f,-179.453f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.305f,45.732f,-179.305f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.389f,45.844f,-179.195f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-0.213 ^-0.392 ^-0.213 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-0.244 ^-0.852 ^-0.244 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-0.266 ^-1.163 ^-0.266 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-0.274 ^-1.362 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-0.274 ^-1.37 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-0.274 ^-1.378 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-0.274 ^-1.385 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-0.274 ^-1.391 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-0.274 ^-1.399 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-0.274 ^-1.405 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:328}
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:329}
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:330}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:331}
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:334}
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:336}