#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-39.232f,-37.761f,116.565f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^6.064 ^-1.918 ^-3.501 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^6.095 ^-1.918 ^-3.519 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^6.125 ^-1.918 ^-3.536 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^6.156 ^-1.918 ^-3.554 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^6.185 ^-1.918 ^-3.571 ~ ~
execute if score #this.aj.anim aj.i matches 68..72 run tp @s ^6.19 ^-1.918 ^-3.574 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4706}