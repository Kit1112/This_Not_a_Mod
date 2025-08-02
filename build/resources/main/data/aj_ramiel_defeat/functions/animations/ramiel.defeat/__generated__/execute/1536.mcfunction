#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-140.184f,-82.443f,-109.465f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-141.618f,-75.748f,-110.298f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-142.071f,-69.264f,-112.022f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-142.273f,-62.599f,-114.037f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-142.36f,-56.019f,-116.113f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-142.389f,-49.12f,-118.323f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-142.381f,-42.443f,-120.468f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-142.344f,-35.443f,-122.708f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-142.285f,-28.253f,-124.992f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-4.294 ^-4.693 ^-0.179 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-4.322 ^-4.856 ^-0.353 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-4.359 ^-4.998 ^-0.515 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-4.409 ^-5.127 ^-0.674 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-4.472 ^-5.24 ^-0.822 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-4.552 ^-5.344 ^-0.963 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-4.645 ^-5.434 ^-1.086 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-4.759 ^-5.519 ^-1.197 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-4.892 ^-5.599 ^-1.292 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:368}