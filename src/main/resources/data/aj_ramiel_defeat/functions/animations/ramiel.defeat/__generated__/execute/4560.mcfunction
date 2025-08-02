#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-28.968f,4.132f,-119.301f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-28.677f,3.689f,-121.611f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-28.397f,3.312f,-123.855f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-28.113f,2.977f,-126.167f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-27.84f,2.697f,-128.454f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-27.562f,2.457f,-130.856f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-27.305f,2.274f,-133.183f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-27.051f,2.133f,-135.625f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-26.808f,2.04f,-138.132f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-5.177 ^-3.251 ^2.952 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-5.249 ^-3.457 ^2.961 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-5.317 ^-3.662 ^2.97 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-5.386 ^-3.876 ^2.981 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-5.453 ^-4.092 ^2.991 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-5.519 ^-4.321 ^3.002 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-5.581 ^-4.544 ^3.013 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-5.642 ^-4.78 ^3.024 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-5.7 ^-5.022 ^3.035 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:576}