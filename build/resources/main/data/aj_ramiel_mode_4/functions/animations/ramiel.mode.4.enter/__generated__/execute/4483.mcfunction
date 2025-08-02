#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.337f,20.678f,-166.707f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.486f,20.831f,-166.725f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.652f,21.001f,-166.744f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.805f,21.158f,-166.763f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.977f,21.334f,-166.783f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.151f,21.512f,-166.804f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.33f,21.695f,-166.825f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.513f,21.882f,-166.847f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-3.039 ^-4.23 ^-3.95 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-3.038 ^-4.225 ^-3.95 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-3.036 ^-4.22 ^-3.95 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-3.035 ^-4.216 ^-3.949 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-3.034 ^-4.21 ^-3.949 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-3.033 ^-4.205 ^-3.949 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-3.032 ^-4.2 ^-3.948 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-3.03 ^-4.194 ^-3.948 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:678}