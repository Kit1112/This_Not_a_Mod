#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-138.356f,68.289f,-120.215f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-134.824f,75.071f,-118.959f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-125.111f,81.879f,-111.563f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-65.439f,87.068f,-54.2f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [11.052f,82.6f,19.941f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [22.295f,75.839f,28.931f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [26.35f,68.558f,30.643f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [28.337f,61.326f,30.333f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [29.541f,54.035f,29.238f]
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-6.154 ^-3.774 ^-0.529 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-6.286 ^-3.974 ^-0.322 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-6.399 ^-4.198 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-6.474 ^-4.438 ^0.112 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-6.495 ^-4.689 ^0.325 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-6.449 ^-4.927 ^0.509 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-6.323 ^-5.153 ^0.664 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-6.132 ^-5.342 ^0.764 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-5.872 ^-5.472 ^0.794 ~ ~
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:401}
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:402}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:404}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:405}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:406}
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:407}
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:408}
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:409}