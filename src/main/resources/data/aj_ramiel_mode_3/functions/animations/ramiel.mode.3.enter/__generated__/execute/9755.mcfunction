#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-60f,180f]
execute if score #this.aj.anim aj.i matches 104 run tp @s ^6.556 ^-1.126 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^6.556 ^-1.069 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^6.556 ^-1.011 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 107..113 run tp @s ^6.556 ^-1.004 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4384}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4385}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4386}