#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^3.747 ^-4.19 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^3.738 ^-4.18 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^3.729 ^-4.169 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^3.72 ^-4.159 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^3.71 ^-4.149 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^3.701 ^-4.138 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^3.692 ^-4.128 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1023}