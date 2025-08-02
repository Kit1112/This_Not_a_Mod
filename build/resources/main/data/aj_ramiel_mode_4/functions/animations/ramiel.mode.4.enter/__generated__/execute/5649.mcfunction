#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.337f,-20.678f,166.707f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.486f,-20.831f,166.725f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.652f,-21.001f,166.744f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.805f,-21.158f,166.763f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.977f,-21.334f,166.783f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.151f,-21.512f,166.804f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.33f,-21.695f,166.825f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.513f,-21.882f,166.847f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^3.413 ^-4.813 ^-5.781 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^3.425 ^-4.802 ^-5.775 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^3.438 ^-4.79 ^-5.768 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^3.45 ^-4.779 ^-5.761 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^3.464 ^-4.767 ^-5.753 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^3.475 ^-4.752 ^-5.745 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^3.487 ^-4.736 ^-5.737 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^3.498 ^-4.721 ^-5.729 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1039}
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1035}