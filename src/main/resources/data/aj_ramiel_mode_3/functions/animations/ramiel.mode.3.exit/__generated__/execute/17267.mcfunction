#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,15f,180f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-6.556 ^-2.045 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-6.556 ^-1.985 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-6.556 ^-1.926 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.828 ^-1.918 ^-2.21 ~ ~
execute if score #this.aj.anim aj.i matches 65..70 run tp @s ^-3.309 ^-1.918 ^-1.91 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2853}
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2976}
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2838}