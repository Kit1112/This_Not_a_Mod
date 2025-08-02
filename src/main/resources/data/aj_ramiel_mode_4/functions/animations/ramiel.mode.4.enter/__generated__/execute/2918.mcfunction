#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.093f,30.339f,-34.883f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.021f,30.359f,-34.836f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.95f,30.378f,-34.79f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.884f,30.396f,-34.747f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.822f,30.413f,-34.708f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.765f,30.428f,-34.671f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.713f,30.442f,-34.638f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.666f,30.455f,-34.607f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.004 ^2.812 ^-4.703 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.005 ^2.807 ^-4.697 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.005 ^2.802 ^-4.691 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.006 ^2.797 ^-4.686 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.006 ^2.793 ^-4.681 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0.006 ^2.789 ^-4.676 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0.007 ^2.786 ^-4.672 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0.007 ^2.782 ^-4.668 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:501}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:499}