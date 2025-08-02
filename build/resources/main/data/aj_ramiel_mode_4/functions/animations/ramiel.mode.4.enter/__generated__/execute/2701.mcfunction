#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-20.203f,39.524f,-13.028f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-24.701f,38.305f,-15.928f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-29.155f,37.098f,-18.801f]
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.471f,35.928f,-21.584f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-37.814f,34.751f,-24.385f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.752f,33.684f,-26.924f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-45.577f,32.647f,-29.391f]
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.127 ^1.083 ^-2.561 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.14 ^1.451 ^-2.68 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.144 ^1.785 ^-2.851 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0.137 ^2.076 ^-3.061 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0.12 ^2.326 ^-3.312 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0.098 ^2.506 ^-3.567 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0.069 ^2.542 ^-3.832 ~ ~
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:494}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:495}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:496}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:497}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:498}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:499}