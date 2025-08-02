#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-140.152f,43.108f,-145.542f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-139.518f,50.491f,-147.206f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-138.609f,57.902f,-148.606f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-137.215f,65.186f,-149.49f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-134.562f,72.773f,-149.225f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-128.091f,80.154f,-145.12f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90.981f,86.813f,-110.404f]
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [12.746f,84.008f,-9.055f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [26.83f,76.576f,2.511f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-5.577 ^-5.732 ^-0.555 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-5.404 ^-5.628 ^-0.364 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-5.213 ^-5.517 ^-0.207 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-5.035 ^-5.413 ^-0.095 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-4.889 ^-5.324 ^-0.026 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-4.81 ^-5.274 ^-0.001 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-4.887 ^-5.355 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-4.978 ^-5.447 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-5.066 ^-5.536 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:378}
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:379}
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:380}
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:381}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:382}
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:383}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:384}