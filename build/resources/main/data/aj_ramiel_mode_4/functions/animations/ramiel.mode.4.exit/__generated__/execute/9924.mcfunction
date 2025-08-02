#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 39..40 run tp @s ^4.879 ^-4.613 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^4.877 ^-4.611 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^4.875 ^-4.608 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^4.872 ^-4.605 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^4.87 ^-4.603 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^4.868 ^-4.6 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1119}