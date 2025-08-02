#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-3.832 ^-4.252 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-3.828 ^-4.248 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.823 ^-4.244 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.819 ^-4.239 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.813 ^-4.234 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.807 ^-4.228 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.801 ^-4.222 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.795 ^-4.215 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:761}