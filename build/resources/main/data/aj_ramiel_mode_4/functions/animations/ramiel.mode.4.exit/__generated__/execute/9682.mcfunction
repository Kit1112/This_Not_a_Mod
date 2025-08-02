#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-97f,-50.024f,170.119f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-104.811f,-58.02f,171.049f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-113.117f,-66.525f,172.038f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-121.734f,-75.347f,173.064f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-130.474f,-84.295f,174.104f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [41.022f,-86.998f,-4.884f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.588f,-78.364f,-3.88f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [24.434f,-70.016f,-2.909f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^2.106 ^-1.936 ^-4.316 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^1.906 ^-1.552 ^-4.276 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^1.654 ^-1.257 ^-4.22 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^1.356 ^-1.048 ^-4.196 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^1.033 ^-0.917 ^-4.222 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.717 ^-0.852 ^-4.301 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.416 ^-0.831 ^-4.421 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.138 ^-0.835 ^-4.56 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:919}