#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.699f,8.411f,-104.528f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.52f,7.768f,-106.27f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.291f,7.043f,-108.372f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.048f,6.365f,-110.502f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-29.791f,5.734f,-112.661f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-29.53f,5.162f,-114.804f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-29.249f,4.617f,-117.061f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-4.406 ^-1.832 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-4.517 ^-1.91 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-4.705 ^-2.07 ^2.912 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-4.788 ^-2.219 ^2.914 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-4.846 ^-2.366 ^2.918 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-4.907 ^-2.524 ^2.923 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-4.972 ^-2.692 ^2.929 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-5.038 ^-2.866 ^2.936 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-5.108 ^-3.057 ^2.943 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:576}