#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45f,0f]
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.141f,-45.144f,-0.017f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [4.265f,-49.367f,-0.508f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [9.789f,-55.022f,-1.165f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [16.235f,-61.622f,-1.933f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [23.514f,-69.074f,-2.799f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [31.275f,-77.019f,-3.723f]
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0 ^-1.694 ^-3.986 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0 ^-1.583 ^-4.144 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-0.001 ^-1.455 ^-4.322 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-0.037 ^-1.282 ^-4.472 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-0.09 ^-1.07 ^-4.607 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-0.137 ^-0.844 ^-4.703 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.108 ^-0.836 ^-4.577 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.37 ^-0.83 ^-4.443 ~ ~
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:919}