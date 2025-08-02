#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-87.203f,35.572f,62.829f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-87.462f,36.059f,65.008f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-87.662f,36.499f,67.15f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-87.817f,36.92f,69.385f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-87.923f,37.302f,71.622f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-87.986f,37.666f,73.998f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-88.002f,37.981f,76.326f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-87.975f,38.271f,78.794f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-87.905f,38.524f,81.354f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^5.323 ^-1.084 ^0.326 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^5.483 ^-1.322 ^0.315 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^5.637 ^-1.559 ^0.307 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^5.792 ^-1.809 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^5.943 ^-2.06 ^0.299 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^6.098 ^-2.329 ^0.298 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^6.243 ^-2.592 ^0.299 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^6.391 ^-2.871 ^0.301 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^6.536 ^-3.16 ^0.306 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:219}