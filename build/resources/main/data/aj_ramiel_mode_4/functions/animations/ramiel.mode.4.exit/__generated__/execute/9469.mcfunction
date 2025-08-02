#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.728 ^-4.189 ^-5.354 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.645 ^-4.158 ^-5.223 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.571 ^-4.128 ^-5.108 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-3.512 ^-4.104 ^-5.021 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-3.495 ^-4.092 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-3.485 ^-4.082 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-3.475 ^-4.072 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:843}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:916}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:841}
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:840}