#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-15f,0f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^6.556 ^-2.045 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^6.556 ^-1.985 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^6.556 ^-1.926 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^3.828 ^-1.918 ^2.21 ~ ~
execute if score #this.aj.anim aj.i matches 65..70 run tp @s ^3.309 ^-1.918 ^1.91 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5379}
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5502}
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5364}