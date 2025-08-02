#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 145 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.91f,-45.21f,-179.804f]
execute if score #this.aj.anim aj.i matches 146 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.891f,-45.184f,-179.828f]
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.872f,-45.16f,-179.851f]
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.856f,-45.138f,-179.871f]
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.839f,-45.117f,-179.891f]
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.825f,-45.098f,-179.909f]
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.811f,-45.08f,-179.926f]
execute if score #this.aj.anim aj.i matches 152 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.799f,-45.064f,-179.941f]
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.788f,-45.049f,-179.954f]
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.778f,-45.037f,-179.966f]
execute if score #this.aj.anim aj.i matches 145 run tp @s ^0.191 ^-2.494 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^0.191 ^-2.495 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^0.191 ^-2.497 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^0.191 ^-2.498 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^0.191 ^-2.499 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^0.191 ^-2.5 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 151 run tp @s ^0.191 ^-2.501 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 152..153 run tp @s ^0.191 ^-2.502 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 154 run tp @s ^0.191 ^-2.503 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 145 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:702}