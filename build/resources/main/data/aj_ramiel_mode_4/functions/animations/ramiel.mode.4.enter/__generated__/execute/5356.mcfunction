#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.337f,-20.678f,166.707f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.486f,-20.831f,166.725f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.652f,-21.001f,166.744f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.805f,-21.158f,166.763f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.977f,-21.334f,166.783f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.151f,-21.512f,166.804f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.33f,-21.695f,166.825f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.513f,-21.882f,166.847f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^2.644 ^-4.273 ^-4.127 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^2.653 ^-4.268 ^-4.123 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^2.664 ^-4.263 ^-4.118 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^2.673 ^-4.258 ^-4.114 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^2.683 ^-4.253 ^-4.109 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^2.692 ^-4.245 ^-4.104 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^2.7 ^-4.237 ^-4.098 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^2.709 ^-4.229 ^-4.093 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:940}