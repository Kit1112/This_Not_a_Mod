#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [140.768f,37.761f,63.435f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^-2.312 ^-1.918 ^1.335 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^-2.303 ^-1.918 ^1.33 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^-2.294 ^-1.918 ^1.324 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^-2.284 ^-1.918 ^1.319 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^-2.273 ^-1.918 ^1.313 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^-2.262 ^-1.918 ^1.306 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^-2.241 ^-1.918 ^1.294 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^-2.214 ^-1.918 ^1.278 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^-2.182 ^-1.918 ^1.26 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^-2.149 ^-1.918 ^1.241 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2156}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2155}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2154}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2152}