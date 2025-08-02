#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-78.415f,30.997f,-167.907f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-83.616f,36.321f,-168.526f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-89.873f,42.727f,-169.271f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-3.627 ^-4.048 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-3.615 ^-4.036 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-3.603 ^-4.024 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-3.592 ^-4.012 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-3.709 ^-3.807 ^-5.405 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-3.891 ^-3.49 ^-5.274 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-4.095 ^-3.097 ^-5.04 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:761}