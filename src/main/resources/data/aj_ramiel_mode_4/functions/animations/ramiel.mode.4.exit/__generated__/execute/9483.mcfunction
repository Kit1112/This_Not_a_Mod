#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-3.464 ^-4.061 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-3.453 ^-4.05 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-3.441 ^-4.038 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-3.43 ^-4.026 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-3.418 ^-4.015 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-3.406 ^-4.002 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-3.394 ^-3.99 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-3.382 ^-3.978 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:840}