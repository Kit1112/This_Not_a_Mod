#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-51.565f,-90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-44.506f,-90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-37.306f,-90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.738f,-30.915f,-91.774f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.697f,-24.614f,-93.92f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.631f,-18.272f,-96.094f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.543f,-11.888f,-98.283f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.436f,-5.589f,-100.435f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.302f,1.014f,-102.674f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-3.736 ^-3.012 ^-1.084 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-3.846 ^-2.947 ^-1.244 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-4.034 ^-2.941 ^-1.387 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-4.095 ^-2.942 ^-1.496 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-4.139 ^-2.932 ^-1.583 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-4.2 ^-2.922 ^-1.651 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-4.279 ^-2.912 ^-1.697 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-4.374 ^-2.906 ^-1.721 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-4.491 ^-2.906 ^-1.723 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:400}