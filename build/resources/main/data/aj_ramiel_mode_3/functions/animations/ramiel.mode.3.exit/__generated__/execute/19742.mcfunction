#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.792f,-20.705f,130.893f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^1.335 ^-1.918 ^-2.312 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^1.33 ^-1.918 ^-2.303 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^1.324 ^-1.918 ^-2.294 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^1.319 ^-1.918 ^-2.284 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^1.313 ^-1.918 ^-2.273 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^1.306 ^-1.918 ^-2.262 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^1.294 ^-1.918 ^-2.241 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^1.278 ^-1.918 ^-2.214 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^1.26 ^-1.918 ^-2.182 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^1.241 ^-1.918 ^-2.149 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4261}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4260}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4259}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4257}