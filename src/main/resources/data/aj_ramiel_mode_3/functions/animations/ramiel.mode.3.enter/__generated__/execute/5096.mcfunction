#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [112.208f,20.705f,49.107f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.501 ^-1.918 ^6.064 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.519 ^-1.918 ^6.095 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.536 ^-1.918 ^6.125 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.554 ^-1.918 ^6.156 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.571 ^-1.918 ^6.185 ~ ~
execute if score #this.aj.anim aj.i matches 68..72 run tp @s ^-3.574 ^-1.918 ^6.19 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1759}