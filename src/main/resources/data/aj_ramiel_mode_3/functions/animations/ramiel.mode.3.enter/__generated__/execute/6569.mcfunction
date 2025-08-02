#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-7.002 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-7.038 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-7.073 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-7.109 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-7.142 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 68..72 run tp @s ^-7.148 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2601}