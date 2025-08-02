#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-75f,180f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^3.785 ^-2.045 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^3.785 ^-1.985 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.785 ^-1.926 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^2.21 ^-1.918 ^-3.828 ~ ~
execute if score #this.aj.anim aj.i matches 65..70 run tp @s ^1.91 ^-1.918 ^-3.309 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4116}
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4239}
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4101}