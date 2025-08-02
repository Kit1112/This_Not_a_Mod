#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-30f,180f]
execute if score #this.aj.anim aj.i matches 32 run tp @s ^1.737 ^-1.918 ^-3.009 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^1.755 ^-1.918 ^-3.04 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^1.774 ^-1.918 ^-3.073 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^1.8 ^-1.918 ^-3.118 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^1.956 ^-1.918 ^-3.388 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^2.108 ^-1.918 ^-3.651 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^2.245 ^-1.918 ^-3.889 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^2.385 ^-1.918 ^-4.131 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^2.522 ^-1.918 ^-4.369 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^2.657 ^-1.918 ^-4.602 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3921}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3920}
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3918}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3917}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3916}