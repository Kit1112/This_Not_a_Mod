#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.521f,-46.02f,-179.02f]
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.486f,-45.973f,-179.067f]
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.451f,-45.926f,-179.114f]
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.416f,-45.88f,-179.16f]
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.382f,-45.834f,-179.205f]
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.348f,-45.789f,-179.249f]
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.315f,-45.745f,-179.292f]
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.282f,-45.702f,-179.334f]
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.25f,-45.659f,-179.375f]
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.22f,-45.619f,-179.415f]
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.189f,-45.578f,-179.454f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0.191 ^-2.451 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0.191 ^-2.453 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0.191 ^-2.456 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0.191 ^-2.458 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0.191 ^-2.461 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0.191 ^-2.463 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0.191 ^-2.465 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0.191 ^-2.468 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0.191 ^-2.47 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0.191 ^-2.472 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0.191 ^-2.474 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:707}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:705}