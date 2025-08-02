#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^3.778 ^-4.225 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^3.775 ^-4.222 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.773 ^-4.219 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^3.771 ^-4.217 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^3.769 ^-4.214 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^3.766 ^-4.212 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^3.764 ^-4.209 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^3.756 ^-4.2 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1023}