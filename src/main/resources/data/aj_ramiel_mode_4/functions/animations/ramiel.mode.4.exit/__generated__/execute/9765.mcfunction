#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^3.812 ^-4.263 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^3.81 ^-4.261 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^3.808 ^-4.258 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^3.805 ^-4.256 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^3.803 ^-4.253 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^3.801 ^-4.25 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^3.799 ^-4.248 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^3.796 ^-4.245 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1023}